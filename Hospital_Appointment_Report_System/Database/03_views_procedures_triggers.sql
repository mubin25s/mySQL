-- ============================================================================
-- Hospital Appointment and Medical Report System
-- 03_views_procedures_triggers.sql: Advanced Database Objects
-- Views, Stored Procedures, Triggers, and Transaction Block
-- ============================================================================

USE hospital_db;

-- ----------------------------------------------------------------------------
-- 1. VIEWS
-- ----------------------------------------------------------------------------

-- View 1: Active_Appointments_View
-- Joins Appointments, Patients, and Doctors for visits currently 'Scheduled'.
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


-- View 2: Patient_Medical_History_View
-- Combines patient details, doctor details, diagnoses, and lab test results.
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
-- 2. STORED PROCEDURE
-- ----------------------------------------------------------------------------
-- sp_BookAppointment: Inputs (Patient_ID, Doctor_ID, date, time_slot)
-- Checks for booking conflicts before inserting a new appointment.

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

    -- Check if doctor already has an active (non-cancelled) appointment at this time slot
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
-- 3. TRIGGERS
-- ----------------------------------------------------------------------------

-- Trigger 1: trg_UpdateAppointmentStatusOnReport
-- Automatically updates appointment status to 'Completed' when a row is inserted into Medical_Reports.

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


-- Trigger 2: trg_PreventDoctorDoubleBooking
-- Prevents double-booking a doctor at the same date and time slot upon direct INSERT.

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


-- ----------------------------------------------------------------------------
-- 4. TRANSACTION BLOCK
-- Creates an appointment and registers its payment atomically.
-- ----------------------------------------------------------------------------

START TRANSACTION;

-- Step 1: Insert new appointment
INSERT INTO Appointments (Patient_ID, Doctor_ID, Appointment_Date, Time_Slot, Status)
VALUES (1, 5, '2026-08-25', '10:00:00', 'Scheduled');

-- Step 2: Register payment for the newly created appointment
INSERT INTO Payments (Appointment_ID, Amount, Payment_Date, Payment_Method)
VALUES (LAST_INSERT_ID(), 160.00, NOW(), 'Card');

-- Commit changes atomically if all operations succeed
COMMIT;
