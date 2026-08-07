-- ============================================================================
-- Hospital Appointment and Medical Report System
-- 04_core_queries.sql: Core SQL Queries (11 Comprehensive Examples)
-- Demonstrating filtering, joins, aggregation, grouping, subqueries & date functions.
-- ============================================================================

USE hospital_db;

-- ----------------------------------------------------------------------------
-- Query 1: Basic Filtering (SELECT ... WHERE)
-- Description: Find all Cardiology doctors whose consultation fee is under $200.
-- ----------------------------------------------------------------------------
SELECT 
    Doctor_ID, 
    Doctor_Name, 
    Specialization, 
    Consultation_Fee, 
    Room_No
FROM Doctors
WHERE Specialization = 'Cardiology' 
  AND Consultation_Fee < 200.00;


-- ----------------------------------------------------------------------------
-- Query 2: String Pattern Matching (LIKE)
-- Description: Retrieve patients whose names start with 'A' or live in Springfield.
-- ----------------------------------------------------------------------------
SELECT 
    Patient_ID, 
    Full_Name, 
    Gender, 
    Phone, 
    Address
FROM Patients
WHERE Full_Name LIKE 'A%' 
   OR Address LIKE '%Springfield%';


-- ----------------------------------------------------------------------------
-- Query 3: Date Range Filtering (BETWEEN)
-- Description: Find all appointments scheduled between August 1 and August 5, 2026.
-- ----------------------------------------------------------------------------
SELECT 
    Appointment_ID, 
    Patient_ID, 
    Doctor_ID, 
    Appointment_Date, 
    Time_Slot, 
    Status
FROM Appointments
WHERE Appointment_Date BETWEEN '2026-08-01' AND '2026-08-05'
ORDER BY Appointment_Date ASC, Time_Slot ASC;


-- ----------------------------------------------------------------------------
-- Query 4: Multi-Table INNER JOIN
-- Description: Fetch completed appointments with patient names, doctor names, and room numbers.
-- ----------------------------------------------------------------------------
SELECT 
    a.Appointment_ID,
    p.Full_Name AS Patient_Name,
    d.Doctor_Name,
    d.Specialization,
    d.Room_No,
    a.Appointment_Date,
    a.Time_Slot
FROM Appointments a
INNER JOIN Patients p ON a.Patient_ID = p.Patient_ID
INNER JOIN Doctors d ON a.Doctor_ID = d.Doctor_ID
WHERE a.Status = 'Completed'
ORDER BY a.Appointment_Date DESC;


-- ----------------------------------------------------------------------------
-- Query 5: Multi-Table LEFT JOIN
-- Description: Retrieve all patients and their medical reports (if any), including patients without reports.
-- ----------------------------------------------------------------------------
SELECT 
    p.Patient_ID,
    p.Full_Name AS Patient_Name,
    a.Appointment_ID,
    r.Test_Name,
    r.Diagnosis,
    r.Report_Date
FROM Patients p
LEFT JOIN Appointments a ON p.Patient_ID = a.Patient_ID
LEFT JOIN Medical_Reports r ON a.Appointment_ID = r.Appointment_ID
ORDER BY p.Patient_ID ASC;


-- ----------------------------------------------------------------------------
-- Query 6: Multi-Table 4-Way Join (Financial Summary)
-- Description: Complete payment breakdown linking Patient, Doctor, Appointment, and Payment tables.
-- ----------------------------------------------------------------------------
SELECT 
    pay.Payment_ID,
    p.Full_Name AS Patient_Name,
    d.Doctor_Name,
    d.Specialization,
    a.Appointment_Date,
    pay.Amount AS Paid_Amount,
    pay.Payment_Method,
    pay.Payment_Date
FROM Payments pay
INNER JOIN Appointments a ON pay.Appointment_ID = a.Appointment_ID
INNER JOIN Patients p ON a.Patient_ID = p.Patient_ID
INNER JOIN Doctors d ON a.Doctor_ID = d.Doctor_ID
ORDER BY pay.Payment_Date DESC;


-- ----------------------------------------------------------------------------
-- Query 7: Aggregation with GROUP BY
-- Description: Calculate total revenue collected per payment method.
-- ----------------------------------------------------------------------------
SELECT 
    Payment_Method,
    COUNT(Payment_ID) AS Total_Transactions,
    SUM(Amount) AS Total_Revenue,
    AVG(Amount) AS Average_Transaction_Amount
FROM Payments
GROUP BY Payment_Method
ORDER BY Total_Revenue DESC;


-- ----------------------------------------------------------------------------
-- Query 8: Aggregation with GROUP BY and HAVING
-- Description: Count completed appointments per doctor, showing only doctors with > 1 completed visit.
-- ----------------------------------------------------------------------------
SELECT 
    d.Doctor_ID,
    d.Doctor_Name,
    d.Specialization,
    COUNT(a.Appointment_ID) AS Completed_Appointments_Count
FROM Doctors d
INNER JOIN Appointments a ON d.Doctor_ID = a.Doctor_ID
WHERE a.Status = 'Completed'
GROUP BY d.Doctor_ID, d.Doctor_Name, d.Specialization
HAVING COUNT(a.Appointment_ID) > 1
ORDER BY Completed_Appointments_Count DESC;


-- ----------------------------------------------------------------------------
-- Query 9: Scalar Subquery
-- Description: Find all appointments handled by doctors whose fee is greater than the hospital average fee.
-- ----------------------------------------------------------------------------
SELECT 
    a.Appointment_ID,
    p.Full_Name AS Patient_Name,
    d.Doctor_Name,
    d.Consultation_Fee,
    a.Appointment_Date
FROM Appointments a
INNER JOIN Patients p ON a.Patient_ID = p.Patient_ID
INNER JOIN Doctors d ON a.Doctor_ID = d.Doctor_ID
WHERE d.Consultation_Fee > (
    SELECT AVG(Consultation_Fee) 
    FROM Doctors
)
ORDER BY d.Consultation_Fee DESC;


-- ----------------------------------------------------------------------------
-- Query 10: Non-Scalar Subquery (IN / EXISTS)
-- Description: Retrieve details of patients who have experienced at least one appointment cancellation.
-- ----------------------------------------------------------------------------
SELECT 
    Patient_ID, 
    Full_Name, 
    Phone, 
    Email
FROM Patients
WHERE Patient_ID IN (
    SELECT DISTINCT Patient_ID 
    FROM Appointments 
    WHERE Status = 'Cancelled'
);


-- ----------------------------------------------------------------------------
-- Query 11: Complex Query Combining JOIN, WHERE, GROUP BY, and HAVING
-- Description: Calculate total revenue and average fee by Doctor Specialization for completed visits,
--              filtering only for specializations generating at least $250 total revenue.
-- ----------------------------------------------------------------------------
SELECT 
    d.Specialization,
    COUNT(DISTINCT a.Appointment_ID) AS Total_Completed_Appointments,
    AVG(p.Amount) AS Avg_Payment_Amount,
    SUM(p.Amount) AS Total_Specialization_Revenue
FROM Doctors d
INNER JOIN Appointments a ON d.Doctor_ID = a.Doctor_ID
INNER JOIN Payments p ON a.Appointment_ID = p.Appointment_ID
WHERE a.Status = 'Completed'
GROUP BY d.Specialization
HAVING SUM(p.Amount) >= 250.00
ORDER BY Total_Specialization_Revenue DESC;
