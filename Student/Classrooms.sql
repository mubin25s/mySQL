CREATE TABLE Classrooms (
    RoomID INT PRIMARY KEY,
    BuildingName VARCHAR(50),
    RoomNumber VARCHAR(10),
    Capacity INT
);

INSERT INTO
    Classrooms (
        RoomID,
        BuildingName,
        RoomNumber,
        Capacity
    )
VALUES (1, 'Building A', '101', 50),
    (2, 'Building A', '102', 40),
    (3, 'Building A', '201', 100),
    (4, 'Building B', '101', 30),
    (5, 'Building B', '105', 35),
    (6, 'Building B', '202', 60),
    (7, 'Building C', 'Lab1', 25),
    (8, 'Building C', 'Lab2', 25),
    (9, 'Building C', '301', 80),
    (10, 'Building D', '101', 45),
    (11, 'Building D', '102', 45),
    (
        12,
        'Building E',
        'Auditorium',
        300
    ),
    (13, 'Building E', '101', 50),
    (14, 'Building F', '103', 30),
    (15, 'Building F', '204', 35),
    (
        16,
        'Building G',
        'Studio1',
        20
    ),
    (
        17,
        'Building G',
        'Studio2',
        20
    ),
    (18, 'Building H', '101', 40),
    (19, 'Building H', '102', 40),
    (
        20,
        'Building I',
        'Clinic1',
        15
    ),
    (21, 'Building I', '105', 30),
    (22, 'Building A', '305', 90),
    (23, 'Building B', '302', 55),
    (24, 'Building C', '303', 75),
    (25, 'Building D', '201', 60);