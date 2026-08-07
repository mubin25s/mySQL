-- ============================================================================
-- Hospital Appointment and Medical Report System
-- 02_data.sql: Data Insertion Script (105 Realistic Records across 5 tables)
-- ============================================================================

USE hospital_db;

-- ----------------------------------------------------------------------------
-- 1. Insert 20 Patients
-- ----------------------------------------------------------------------------
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

-- ----------------------------------------------------------------------------
-- 2. Insert 20 Doctors
-- ----------------------------------------------------------------------------
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

-- ----------------------------------------------------------------------------
-- 3. Insert 25 Appointments
-- ----------------------------------------------------------------------------
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

-- ----------------------------------------------------------------------------
-- 4. Insert 20 Medical Reports (1:1 with Completed / Relevant Appointments)
-- ----------------------------------------------------------------------------
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

-- ----------------------------------------------------------------------------
-- 5. Insert 20 Payments
-- ----------------------------------------------------------------------------
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
