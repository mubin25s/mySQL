-- Insert sample students
INSERT INTO Students (first_name, last_name, email, phone, date_of_birth) VALUES
('John', 'Doe', 'john.doe@email.com', '123-456-7890', '2003-05-15'),
('Jane', 'Smith', 'jane.smith@email.com', '098-765-4321', '2002-08-22'),
('Bob', 'Johnson', 'bob.j@email.com', '555-123-4567', '2004-01-10');

-- Insert sample courses
INSERT INTO Courses (course_code, course_name, credits, department) VALUES
('CS101', 'Introduction to Programming', 3, 'Computer Science'),
('MATH201', 'Calculus II', 4, 'Mathematics'),
('ENG102', 'English Composition', 3, 'English');

-- Insert sample enrollments
INSERT INTO Enrollments (student_id, course_id) VALUES
(1, 1), (1, 2), (2, 1), (3, 3);

-- Insert sample grades
INSERT INTO Grades (enrollment_id, grade, score) VALUES
(1, 'A', 92.5), (2, 'B+', 88.0), (3, 'A-', 90.0), (4, 'C', 75.5);
