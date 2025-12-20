-- View all students with their enrollments
SELECT s.first_name, s.last_name, c.course_name 
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- Student GPA calculation (average score)
SELECT s.first_name, s.last_name, AVG(g.score) as avg_score
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Grades g ON e.enrollment_id = g.enrollment_id
GROUP BY s.student_id;

-- Top performing students
SELECT s.first_name, s.last_name, g.grade, g.score
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Grades g ON e.enrollment_id = g.grade_id
ORDER BY g.score DESC
LIMIT 5;
-- Courses with the highest enrollment
SELECT c.course_name, COUNT(e.enrollment_id) as enrollment_count