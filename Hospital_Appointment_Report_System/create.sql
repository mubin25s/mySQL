-- ============================================================================
-- Hospital Appointment and Medical Report System
-- File 1: create.sql (Database, Tables, Indexes, Views, Stored Procedure, Triggers)
-- Compatible with MySQL 8.0+ / PostgreSQL / SQL Server
-- ============================================================================

CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

-- ----------------------------------------------------------------------------
-- Drop existing objects in reverse dependency order
-- ----------------------------------------------------------------------------
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Medical_Reports;
DROP TABLE IF EXISTS Appointments;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Patients;

-- ----------------------------------------------------------------------------
-- 1. Patients Table
-- ----------------------------------------------------------------------------
CREATE TABLE Patients (
    Patient_ID  INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name   VARCHAR(100) NOT NULL,
    Gender      VARCHAR(10)  NOT NULL CHECK (Gender IN ('Male', 'Female', 'Other')),
    DOB         DATE         NOT NULL,
    Phone       VARCHAR(20)  NOT NULL UNIQUE,
    Email       VARCHAR(100) UNIQUE,
    Address     VARCHAR(255)
);

-- ----------------------------------------------------------------------------
-- 2. Doctors Table
-- ----------------------------------------------------------------------------
CREATE TABLE Doctors (
    Doctor_ID        INT AUTO_INCREMENT PRIMARY KEY,
    Doctor_Name      VARCHAR(100) NOT NULL,
    Specialization   VARCHAR(100) NOT NULL,
    Phone            VARCHAR(20),
    Consultation_Fee DECIMAL(10, 2) NOT NULL CHECK (Consultation_Fee > 0),
    Room_No          VARCHAR(20)
);

-- ----------------------------------------------------------------------------
-- 3. Appointments Table
-- ----------------------------------------------------------------------------
CREATE TABLE Appointments (
    Appointment_ID   INT AUTO_INCREMENT PRIMARY KEY,
    Patient_ID       INT          NOT NULL,
    Doctor_ID        INT          NOT NULL,
    Appointment_Date DATE         NOT NULL,
    Time_Slot        TIME         NOT NULL,
    Status           VARCHAR(20)  NOT NULL DEFAULT 'Scheduled' 
                     CHECK (Status IN ('Scheduled', 'Completed', 'Cancelled')),
    CONSTRAINT fk_appointments_patient 
        FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_appointments_doctor 
        FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------------------------------------------------------
-- 4. Medical_Reports Table (1:1 with Appointments)
-- ----------------------------------------------------------------------------
CREATE TABLE Medical_Reports (
    Report_ID      INT AUTO_INCREMENT PRIMARY KEY,
    Appointment_ID INT          NOT NULL UNIQUE,
    Test_Name      VARCHAR(100) NOT NULL,
    Report_Date    DATE         NOT NULL,
    Diagnosis      TEXT,
    Lab_Remarks    TEXT,
    CONSTRAINT fk_reports_appointment 
        FOREIGN KEY (Appointment_ID) REFERENCES Appointments(Appointment_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------------------------------------------------------
-- 5. Payments Table
-- ----------------------------------------------------------------------------
CREATE TABLE Payments (
    Payment_ID     INT AUTO_INCREMENT PRIMARY KEY,
    Appointment_ID INT            NOT NULL,
    Amount         DECIMAL(10, 2) NOT NULL CHECK (Amount > 0),
    Payment_Date   DATETIME       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Payment_Method VARCHAR(20)    NOT NULL 
                   CHECK (Payment_Method IN ('Cash', 'Card', 'Mobile Banking')),
    CONSTRAINT fk_payments_appointment 
        FOREIGN KEY (Appointment_ID) REFERENCES Appointments(Appointment_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------------------------------------------------------
-- Non-Clustered Indexes
-- ----------------------------------------------------------------------------
CREATE INDEX idx_appointments_date ON Appointments(Appointment_Date);
CREATE INDEX idx_appointments_patient ON Appointments(Patient_ID);
CREATE INDEX idx_appointments_doctor ON Appointments(Doctor_ID);
CREATE INDEX idx_doctors_specialization ON Doctors(Specialization);

-- ----------------------------------------------------------------------------
-- Database Views
-- ----------------------------------------------------------------------------
DROP VIEW IF EXISTS Active_Appointments_View;
CREATE VIEW Active_Appointments_View AS
SELECT 
    a.Appointment_ID,
    a.Appointment_Date,
    a.Time_Slot,
    a.Status,
    p.Patient_ID,
    p.Full_Name AS Patient_Name,
    p.Phone AS Patient_Phone,
    p.Email AS Patient_Email,
    d.Doctor_ID,
    d.Doctor_Name,
    d.Specialization,
    d.Room_No,
    d.Consultation_Fee
FROM Appointments a
INNER JOIN Patients p ON a.Patient_ID = p.Patient_ID
INNER JOIN Doctors d ON a.Doctor_ID = d.Doctor_ID
WHERE a.Status = 'Scheduled';

DROP VIEW IF EXISTS Patient_Medical_History_View;
CREATE VIEW Patient_Medical_History_View AS
SELECT 
    p.Patient_ID,
    p.Full_Name AS Patient_Name,
    p.Gender,
    p.DOB,
    a.Appointment_ID,
    a.Appointment_Date,
    d.Doctor_Name,
    d.Specialization,
    r.Report_ID,
    r.Test_Name,
    r.Report_Date,
    r.Diagnosis,
    r.Lab_Remarks
FROM Patients p
INNER JOIN Appointments a ON p.Patient_ID = a.Patient_ID
INNER JOIN Doctors d ON a.Doctor_ID = d.Doctor_ID
LEFT JOIN Medical_Reports r ON a.Appointment_ID = r.Appointment_ID;

-- ----------------------------------------------------------------------------
-- Stored Procedure: sp_BookAppointment
-- ----------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS sp_BookAppointment;
DELIMITER //
CREATE PROCEDURE sp_BookAppointment(
    IN p_Patient_ID INT,
    IN p_Doctor_ID INT,
    IN p_Appointment_Date DATE,
    IN p_Time_Slot TIME
)
BEGIN
    DECLARE v_conflict_count INT DEFAULT 0;

    SELECT COUNT(*) INTO v_conflict_count
    FROM Appointments
    WHERE Doctor_ID = p_Doctor_ID
      AND Appointment_Date = p_Appointment_Date
      AND Time_Slot = p_Time_Slot
      AND Status != 'Cancelled';

    IF v_conflict_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Booking Conflict Error: Doctor is already booked for the selected date and time slot.';
    ELSE
        INSERT INTO Appointments (Patient_ID, Doctor_ID, Appointment_Date, Time_Slot, Status)
        VALUES (p_Patient_ID, p_Doctor_ID, p_Appointment_Date, p_Time_Slot, 'Scheduled');
        
        SELECT 'Appointment successfully booked!' AS ResultMessage, LAST_INSERT_ID() AS New_Appointment_ID;
    END IF;
END //
DELIMITER ;

-- ----------------------------------------------------------------------------
-- Triggers
-- ----------------------------------------------------------------------------
DROP TRIGGER IF EXISTS trg_UpdateAppointmentStatusOnReport;
DELIMITER //
CREATE TRIGGER trg_UpdateAppointmentStatusOnReport
AFTER INSERT ON Medical_Reports
FOR EACH ROW
BEGIN
    UPDATE Appointments
    SET Status = 'Completed'
    WHERE Appointment_ID = NEW.Appointment_ID;
END //
DELIMITER ;

DROP TRIGGER IF EXISTS trg_PreventDoctorDoubleBooking;
DELIMITER //
CREATE TRIGGER trg_PreventDoctorDoubleBooking
BEFORE INSERT ON Appointments
FOR EACH ROW
BEGIN
    DECLARE v_existing_booking INT DEFAULT 0;

    SELECT COUNT(*) INTO v_existing_booking
    FROM Appointments
    WHERE Doctor_ID = NEW.Doctor_ID
      AND Appointment_Date = NEW.Appointment_Date
      AND Time_Slot = NEW.Time_Slot
      AND Status != 'Cancelled';

    IF v_existing_booking > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Double-Booking Prevention Trigger: Doctor already has an active appointment at this date and time.';
    END IF;
END //
DELIMITER ;
