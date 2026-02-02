CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    Title VARCHAR(100),
    Credits INT,
    DeptID INT,
    InstructorID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments (DeptID),
    FOREIGN KEY (InstructorID) REFERENCES Instructors (InstructorID)
);

INSERT INTO
    Courses (
        CourseID,
        Title,
        Credits,
        DeptID,
        InstructorID
    )
VALUES (1, 'Intro to CS', 4, 1, 1),
    (2, 'Data Structures', 4, 1, 4),
    (3, 'Calculus I', 4, 2, 2),
    (4, 'Linear Algebra', 3, 2, 24),
    (5, 'Physics I', 4, 3, 3),
    (
        6,
        'Organic Chemistry',
        4,
        4,
        5
    ),
    (7, 'Biology 101', 3, 5, 6),
    (8, 'World History', 3, 6, 7),
    (
        9,
        'Shakespeare Studies',
        3,
        7,
        8
    ),
    (
        10,
        'Intro to Psychology',
        3,
        8,
        9
    ),
    (
        11,
        'Microeconomics',
        3,
        9,
        10
    ),
    (
        12,
        'Management 101',
        3,
        10,
        11
    ),
    (
        13,
        'Renaissance Art',
        3,
        11,
        12
    ),
    (14, 'Music Theory', 3, 12, 13),
    (
        15,
        'Political Theory',
        3,
        13,
        14
    ),
    (
        16,
        'Intro to Sociology',
        3,
        14,
        15
    ),
    (17, 'Ethics', 3, 15, 16),
    (
        18,
        'Circuit Analysis',
        4,
        16,
        17
    ),
    (
        19,
        'Modern Architecture',
        3,
        17,
        18
    ),
    (
        20,
        'Nursing Basics',
        4,
        18,
        19
    ),
    (
        21,
        'Modern Education',
        3,
        19,
        20
    ),
    (22, 'Ecology', 3, 20, 21),
    (
        23,
        'Astronomy 101',
        3,
        21,
        21
    ),
    (24, 'Probability', 3, 22, 2),
    (
        25,
        'Linguistics 101',
        3,
        23,
        24
    );