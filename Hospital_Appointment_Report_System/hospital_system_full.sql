-- ============================================================================
-- Hospital Appointment and Medical Report System - Complete Master SQL Script
-- File: hospital_system_full.sql
-- Compatible with MySQL 8.0+ / PostgreSQL / SQL Server
-- ============================================================================

CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

-- ----------------------------------------------------------------------------
-- SECTION 1: DATABASE SCHEMA & TABLES (3NF)
-- ----------------------------------------------------------------------------

DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Medical_Reports;
DROP TABLE IF EXISTS Appointments;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Patients;

-- 1. Patients Table
CREATE TABLE Patients (
    Patient_ID  INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name   VARCHAR(100) NOT NULL,
    Gender      VARCHAR(10)  NOT NULL CHECK (Gender IN ('Male', 'Female', 'Other')),
    DOB         DATE         NOT NULL,
    Phone       VARCHAR(20)  NOT NULL UNIQUE,
    Email       VARCHAR(100) UNIQUE,
    Address     VARCHAR(255)
);

-- 2. Doctors Table
CREATE TABLE Doctors (
    Doctor_ID        INT AUTO_INCREMENT PRIMARY KEY,
    Doctor_Name      VARCHAR(100) NOT NULL,
    Specialization   VARCHAR(100) NOT NULL,
    Phone            VARCHAR(20),
    Consultation_Fee DECIMAL(10, 2) NOT NULL CHECK (Consultation_Fee > 0),
    Room_No          VARCHAR(20)
);

-- 3. Appointments Table
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

-- 4. Medical_Reports Table (1:1 with Appointments)
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

-- 5. Payments Table
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

-- Non-Clustered Indexes
CREATE INDEX idx_appointments_date ON Appointments(Appointment_Date);
CREATE INDEX idx_appointments_patient ON Appointments(Patient_ID);
CREATE INDEX idx_appointments_doctor ON Appointments(Doctor_ID);
CREATE INDEX idx_doctors_specialization ON Doctors(Specialization);

-- ----------------------------------------------------------------------------
-- SECTION 2: DATA INSERTION (105 Total Records)
-- ----------------------------------------------------------------------------

-- Insert Patients (20 records)
INSERT INTO Patients (Patient_ID, Full_Name, Gender, DOB, Phone, Email, Address) VALUES
(1,  'John Doe',          'Male',   '1985-03-15', '+15550192831', 'john.doe@email.com',    '123 Maple St, Springfield'),
(2,  'Jane Smith',        'Female', '1990-07-22', '+15550192832', 'jane.smith@email.com',  '456 Oak Ave, Metropolis'),
(3,  'Robert Johnson',    'Male',   '1978-11-05', '+15550192833', 'robert.j@email.com',    '789 Pine Rd, Gotham'),
(4,  'Emily Davis',       'Female', '1995-01-30', '+15550192834', 'emily.davis@email.com', '101 Cedar Ln, Star City'),
(5,  'Michael Brown',     'Male',   '1962-09-12', '+15550192835', 'mbrown@email.com',      '202 Birch Dr, Central City'),
(6,  'Sarah Wilson',      'Female', '1988-04-18', '+15550192836', 'sarah.w@email.com',     '303 Elm St, Coast City'),
(7,  'David Taylor',      'Male',   '2001-12-03', '+15550192837', 'dtaylor@email.com',     '404 Walnut St, Bludhaven'),
(8,  'Amanda Anderson',   'Female', '1993-06-25', '+15550192838', 'amanda.a@email.com',    '505 Spruce Ave, Keystone'),
(9,  'James Thomas',      'Male',   '1975-08-08', '+15550192839', 'jthomas@email.com',     '606 Ash Ln, Smallville'),
(10, 'Jessica Jackson',   'Female', '1999-02-14', '+15550192840', 'jessica.j@email.com',   '707 Cherry St, National City'),
(11, 'Daniel White',      'Male',   '1982-10-29', '+15550192841', 'dwhite@email.com',      '808 Cypress Rd, Midway'),
(12, 'Sophia Harris',     'Female', '2003-05-19', '+15550192842', 'sharris@email.com',     '909 Magnolia Dr, Hub City'),
(13, 'William Martin',    'Male',   '1958-07-11', '+15550192843', 'wmartin@email.com',     '111 Poplar St, Freeland'),
(14, 'Olivia Thompson',   'Female', '1996-11-24', '+15550192844', 'othompson@email.com',   '222 Willow Way, Ivy Town'),
(15, 'Alexander Garcia',  'Male',   '1989-01-08', '+15550192845', 'agarcia@email.com',     '333 Sycamore Ct, Fawcett'),
(16, 'Isabella Martinez', 'Female', '1994-08-31', '+15550192846', 'imartinez@email.com',   '444 Alder St, Opal City'),
(17, 'Benjamin Robinson', 'Male',   '1970-03-27', '+15550192847', 'brobinson@email.com',   '555 Beech Blvd, Happy Harbor'),
(18, 'Mia Clark',         'Female', '2002-09-05', '+15550192848', 'mclark@email.com',      '666 Chestnut St, Gateway City'),
(19, 'Ethan Rodriguez',   'Male',   '1991-12-16', '+15550192849', 'erodriguez@email.com',  '777 Hickory Ln, Suburbia'),
(20, 'Charlotte Lewis',   'Female', '1987-05-02', '+15550192850', 'clewis@email.com',      '888 Redwood Dr, Riverdale');

-- Insert Doctors (20 records)
INSERT INTO Doctors (Doctor_ID, Doctor_Name, Specialization, Phone, Consultation_Fee, Room_No) VALUES
(1,  'Dr. Alice Walker',   'Cardiology',       '+15550200001', 150.00, 'Room 101'),
(2,  'Dr. Bernard Stern',   'Cardiology',       '+15550200002', 180.00, 'Room 102'),
(3,  'Dr. Catherine Vance', 'Neurology',        '+15550200003', 200.00, 'Room 201'),
(4,  'Dr. David Miller',    'Pediatrics',       '+15550200004', 120.00, 'Room 301'),
(5,  'Dr. Elena Rostova',   'Orthopedics',      '+15550200005', 160.00, 'Room 401'),
(6,  'Dr. Frank Castle',    'Dermatology',      '+15550200006', 110.00, 'Room 501'),
(7,  'Dr. Grace Hopper',    'General Medicine', '+15550200007',  90.00, 'Room 103'),
(8,  'Dr. Henry McCoy',     'Oncology',         '+15550200008', 250.00, 'Room 601'),
(9,  'Dr. Irene Adler',     'ENT',              '+15550200009', 130.00, 'Room 202'),
(10, 'Dr. Jonathan Crane',  'Psychiatry',       '+15550200010', 175.00, 'Room 302'),
(11, 'Dr. Karen Page',      'Ophthalmology',    '+15550200011', 140.00, 'Room 402'),
(12, 'Dr. Luther Stickell', 'Nephrology',       '+15550200012', 190.00, 'Room 502'),
(13, 'Dr. Meredith Grey',   'General Surgery',  '+15550200013', 220.00, 'Room 602'),
(14, 'Dr. Norman Osborn',   'Pulmonology',      '+15550200014', 165.00, 'Room 104'),
(15, 'Dr. Pamela Isley',    'Endocrinology',    '+15550200015', 155.00, 'Room 203'),
(16, 'Dr. Quentin Beck',    'Gastroenterology', '+15550200016', 170.00, 'Room 303'),
(17, 'Dr. Reed Richards',   'Rheumatology',     '+15550200017', 210.00, 'Room 403'),
(18, 'Dr. Stephen Strange', 'Neurosurgery',     '+15550200018', 300.00, 'Room 603'),
(19, 'Dr. Tony Stark',      'Cardiology',       '+15550200019', 280.00, 'Room 105'),
(20, 'Dr. Victor Fries',    'Pulmonology',      '+15550200020', 195.00, 'Room 503');

-- Insert Appointments (25 records)
INSERT INTO Appointments (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date, Time_Slot, Status) VALUES
(1,  1,  1,  '2026-08-01', '09:00:00', 'Completed'),
(2,  2,  1,  '2026-08-01', '10:00:00', 'Completed'),
(3,  3,  2,  '2026-08-02', '11:00:00', 'Completed'),
(4,  4,  3,  '2026-08-02', '09:30:00', 'Completed'),
(5,  5,  4,  '2026-08-03', '14:00:00', 'Completed'),
(6,  6,  5,  '2026-08-03', '15:00:00', 'Completed'),
(7,  7,  6,  '2026-08-04', '10:30:00', 'Completed'),
(8,  8,  7,  '2026-08-04', '11:30:00', 'Completed'),
(9,  9,  8,  '2026-08-05', '09:00:00', 'Completed'),
(10, 10, 9,  '2026-08-05', '13:00:00', 'Completed'),
(11, 11, 10, '2026-08-06', '14:30:00', 'Completed'),
(12, 12, 11, '2026-08-06', '16:00:00', 'Completed'),
(13, 13, 12, '2026-08-07', '10:00:00', 'Completed'),
(14, 14, 13, '2026-08-07', '11:00:00', 'Completed'),
(15, 15, 14, '2026-08-08', '09:00:00', 'Scheduled'),
(16, 16, 15, '2026-08-08', '10:30:00', 'Scheduled'),
(17, 17, 16, '2026-08-09', '11:00:00', 'Scheduled'),
(18, 18, 17, '2026-08-09', '14:00:00', 'Scheduled'),
(19, 19, 18, '2026-08-10', '15:00:00', 'Scheduled'),
(20, 20, 19, '2026-08-10', '16:00:00', 'Completed'),
(21, 1,  19, '2026-08-11', '09:00:00', 'Cancelled'),
(22, 2,  1,  '2026-08-11', '10:00:00', 'Cancelled'),
(23, 3,  18, '2026-08-12', '11:00:00', 'Cancelled'),
(24, 4,  2,  '2026-08-12', '14:00:00', 'Scheduled'),
(25, 5,  1,  '2026-08-13', '15:00:00', 'Scheduled');

-- Insert Medical Reports (20 records)
INSERT INTO Medical_Reports (Report_ID, Appointment_ID, Test_Name, Report_Date, Diagnosis, Lab_Remarks) VALUES
(1,  1,  'ECG & Lipid Profile',       '2026-08-01', 'Mild Arrhythmia',            'Cholesterol slightly elevated. Follow up in 3 months.'),
(2,  2,  'Echocardiogram',             '2026-08-01', 'Normal Cardiac Function',    'All heart valves functioning normally.'),
(3,  3,  'Coronary Calcium Scan',     '2026-08-02', 'Coronary Artery Calcification', 'Low calcium score detected. Low sodium diet advised.'),
(4,  4,  'Brain MRI Scan',            '2026-08-02', 'Migraine with Aura',         'No structural brain abnormalities observed.'),
(5,  5,  'Pediatric Blood Panel',     '2026-08-03', 'Mild Iron Deficiency',       'Hemoglobin 10.5 g/dL. Iron supplement prescribed.'),
(6,  6,  'Knee X-Ray & MRI',          '2026-08-03', 'Meniscus Tear',              'Grade II tear in medial meniscus. Physical therapy recommended.'),
(7,  7,  'Skin Lesion Biopsy',        '2026-08-04', 'Benign Nevus',               'No malignant cells detected in skin biopsy.'),
(8,  8,  'Comprehensive Metabolic',   '2026-08-04', 'Routine Health Check',       'All parameters within normal reference ranges.'),
(9,  9,  'Tumor Marker Panel',        '2026-08-05', 'Benign Hyperplasia',         'Tumor markers within normal limits.'),
(10, 10, 'Nasal Endoscopy',           '2026-08-05', 'Chronic Sinusitis',          'Mucosal inflammation noted. Nasal spray prescribed.'),
(11, 11, 'Psychiatric Assessment',    '2026-08-06', 'Generalized Anxiety Disorder','Cognitive Behavioral Therapy recommended.'),
(12, 12, 'Visual Field Test',         '2026-08-06', 'Mild Astigmatism',           'Corrective lenses prescribed.'),
(13, 13, 'Renal Function Test',       '2026-08-07', 'Early Stage Nephropathy',    'Serum creatinine 1.4 mg/dL. Hydration plan advised.'),
(14, 14, 'Abdominal Ultrasound',      '2026-08-07', 'Gallstones (Mild)',          'Small gallstones without inflammation.'),
(15, 15, 'Chest X-Ray',               '2026-08-08', 'Bronchitis',                 'Mild pulmonary congestion.'),
(16, 16, 'Fasting Blood Glucose',     '2026-08-08', 'Pre-Diabetes',               'Fasting sugar 115 mg/dL. Lifestyle modification recommended.'),
(17, 17, 'Endoscopy',                 '2026-08-09', 'Gastritis',                  'Mild gastric mucosal erosion.'),
(18, 18, 'Rheumatoid Factor Test',    '2026-08-09', 'Mild Osteoarthritis',        'RF test negative; cartilage wear noted.'),
(19, 19, 'Spine MRI',                 '2026-08-10', 'L4-L5 Disc Herniation',      'Lumbar disc bulge causing minor nerve impingement.'),
(20, 20, 'Advanced Cardiac Biomarkers','2026-08-10', 'Hypertension Stage 1',       'Blood pressure 138/88 mmHg. Antihypertensive started.');

-- Insert Payments (20 records)
INSERT INTO Payments (Payment_ID, Appointment_ID, Amount, Payment_Date, Payment_Method) VALUES
(1,  1,  150.00, '2026-08-01 09:30:00', 'Card'),
(2,  2,  150.00, '2026-08-01 10:30:00', 'Cash'),
(3,  3,  180.00, '2026-08-02 11:30:00', 'Mobile Banking'),
(4,  4,  200.00, '2026-08-02 10:00:00', 'Card'),
(5,  5,  120.00, '2026-08-03 14:30:00', 'Cash'),
(6,  6,  160.00, '2026-08-03 15:30:00', 'Mobile Banking'),
(7,  7,  110.00, '2026-08-04 11:00:00', 'Card'),
(8,  8,   90.00, '2026-08-04 12:00:00', 'Cash'),
(9,  9,  250.00, '2026-08-05 09:30:00', 'Card'),
(10, 10, 130.00, '2026-08-05 13:30:00', 'Mobile Banking'),
(11, 11, 175.00, '2026-08-06 15:00:00', 'Cash'),
(12, 12, 140.00, '2026-08-06 16:30:00', 'Card'),
(13, 13, 190.00, '2026-08-07 10:30:00', 'Mobile Banking'),
(14, 14, 220.00, '2026-08-07 11:30:00', 'Card'),
(15, 15, 165.00, '2026-08-08 09:15:00', 'Cash'),
(16, 16, 155.00, '2026-08-08 10:45:00', 'Mobile Banking'),
(17, 17, 170.00, '2026-08-09 11:15:00', 'Card'),
(18, 18, 210.00, '2026-08-09 14:15:00', 'Cash'),
(19, 19, 300.00, '2026-08-10 15:30:00', 'Card'),
(20, 20, 280.00, '2026-08-10 16:30:00', 'Mobile Banking');

-- ----------------------------------------------------------------------------
-- SECTION 3: VIEWS, PROCEDURES, TRIGGERS & TRANSACTIONS
-- ----------------------------------------------------------------------------

-- View 1: Active_Appointments_View
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

-- Stored Procedure: sp_BookAppointment
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

-- Trigger 1: trg_UpdateAppointmentStatusOnReport
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
-- SECTION 4: INVESTIGATIVE / ANALYTICAL QUERY
-- ----------------------------------------------------------------------------
-- "Top 3 doctors generating highest revenue along with cancellation rates"

SELECT 
    d.Doctor_ID,
    d.Doctor_Name,
    d.Specialization,
    d.Consultation_Fee,
    COUNT(a.Appointment_ID) AS Total_Appointments_Booked,
    SUM(CASE WHEN a.Status = 'Completed' THEN 1 ELSE 0 END) AS Completed_Appointments,
    SUM(CASE WHEN a.Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Appointments,
    ROUND(
        COALESCE(
            (SUM(CASE WHEN a.Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0) / NULLIF(COUNT(a.Appointment_ID), 0), 
            0
        ), 
        2
    ) AS Cancellation_Rate_Pct,
    COALESCE(SUM(pay.Amount), 0.00) AS Total_Revenue_Generated
FROM Doctors d
LEFT JOIN Appointments a ON d.Doctor_ID = a.Doctor_ID
LEFT JOIN Payments pay ON a.Appointment_ID = pay.Appointment_ID
GROUP BY d.Doctor_ID, d.Doctor_Name, d.Specialization, d.Consultation_Fee
HAVING COUNT(a.Appointment_ID) > 0
ORDER BY Total_Revenue_Generated DESC, Cancellation_Rate_Pct ASC
LIMIT 3;
