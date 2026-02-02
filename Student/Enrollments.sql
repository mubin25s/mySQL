CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students (StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID)
);

INSERT INTO
    Enrollments (
        EnrollmentID,
        StudentID,
        CourseID,
        Grade
    )
VALUES (1, 1, 1, 'A'),
    (2, 1, 3, 'B+'),
    (3, 2, 3, 'A'),
    (4, 2, 4, 'A-'),
    (5, 3, 5, 'B'),
    (6, 4, 6, 'C+'),
    (7, 5, 7, 'A'),
    (8, 6, 8, 'B-'),
    (9, 7, 9, 'A'),
    (10, 8, 10, 'B'),
    (11, 9, 11, 'A-'),
    (12, 10, 12, 'B+'),
    (13, 11, 13, 'A'),
    (14, 12, 14, 'C'),
    (15, 13, 15, 'B'),
    (16, 14, 16, 'A'),
    (17, 15, 17, 'B+'),
    (18, 16, 18, 'A-'),
    (19, 17, 19, 'A'),
    (20, 18, 20, 'B'),
    (21, 19, 21, 'A'),
    (22, 20, 22, 'C+'),
    (23, 21, 23, 'B-'),
    (24, 22, 24, 'A'),
    (25, 23, 25, 'B');