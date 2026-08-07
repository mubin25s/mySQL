-- ============================================================================
-- Hospital Appointment and Medical Report System
-- 05_analytical_query.sql: Advanced Operational & Analytical Query
-- ============================================================================
-- Operational Objective:
-- "Find the top 3 doctors generating the highest revenue, along with their 
--  appointment cancellation rates and total consultation metrics."
-- ============================================================================

USE hospital_db;

SELECT 
    d.Doctor_ID,
    d.Doctor_Name,
    d.Specialization,
    d.Consultation_Fee,
    COUNT(a.Appointment_ID) AS Total_Appointments_Booked,
    SUM(CASE WHEN a.Status = 'Completed' THEN 1 ELSE 0 END) AS Completed_Appointments,
    SUM(CASE WHEN a.Status = 'Scheduled' THEN 1 ELSE 0 END) AS Scheduled_Appointments,
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
