-- ============================================================================
-- Hospital Appointment and Medical Report System
-- 01_schema.sql: Database Schema Definition & Core Tables (3NF)
-- Compatible with MySQL 8.0+ / PostgreSQL / SQL Server
-- ============================================================================

CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;

-- ----------------------------------------------------------------------------
-- Drop existing tables in reverse dependency order
-- ----------------------------------------------------------------------------
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Medical_Reports;
DROP TABLE IF EXISTS Appointments;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Patients;

-- ----------------------------------------------------------------------------
-- 1. Patients Table
-- Stores demographic and contact information for hospital patients.
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
-- Stores medical doctor profiles, specializations, fees, and room numbers.
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
-- Tracks consultation scheduling between patients and doctors.
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
-- 4. Medical_Reports Table
-- Stores diagnostic test results and medical reports (1:1 with Appointments).
-- ----------------------------------------------------------------------------
CREATE TABLE Medical_Reports (
    Report_ID      INT AUTO_INCREMENT PRIMARY KEY,
    Appointment_ID INT          NOT NULL UNIQUE, -- Ensures 1:1 relationship
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
-- Tracks billing and financial transactions for appointments.
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
-- Non-Clustered Performance Indexes
-- ----------------------------------------------------------------------------
CREATE INDEX idx_appointments_date ON Appointments(Appointment_Date);
CREATE INDEX idx_appointments_patient ON Appointments(Patient_ID);
CREATE INDEX idx_appointments_doctor ON Appointments(Doctor_ID);
CREATE INDEX idx_doctors_specialization ON Doctors(Specialization);
