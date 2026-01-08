-- Teams Table
CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    league_id INT,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    founded_year INT,
    FOREIGN KEY (league_id) REFERENCES leagues (league_id)
);

INSERT INTO
    teams (
        team_id,
        league_id,
        name,
        city,
        founded_year
    )
VALUES (
        1,
        1,
        'Manchester City',
        'Manchester',
        1880
    ),
    (
        2,
        1,
        'Liverpool',
        'Liverpool',
        1892
    ),
    (
        3,
        2,
        'Real Madrid',
        'Madrid',
        1902
    ),
    (
        4,
        2,
        'Barcelona',
        'Barcelona',
        1899
    ),
    (
        5,
        3,
        'Juventus',
        'Turin',
        1897
    );