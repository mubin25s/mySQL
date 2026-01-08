-- Coaches Table
CREATE TABLE coaches (
    coach_id INT PRIMARY KEY,
    team_id INT,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(100),
    experience_years INT,
    FOREIGN KEY (team_id) REFERENCES teams (team_id)
);

INSERT INTO
    coaches (
        coach_id,
        team_id,
        name,
        nationality,
        experience_years
    )
VALUES (
        1,
        1,
        'Pep Guardiola',
        'Spain',
        15
    ),
    (
        2,
        2,
        'Arne Slot',
        'Netherlands',
        10
    ),
    (
        3,
        3,
        'Carlo Ancelotti',
        'Italy',
        25
    ),
    (
        4,
        4,
        'Hansi Flick',
        'Germany',
        12
    ),
    (
        5,
        5,
        'Thiago Motta',
        'Italy',
        5
    );