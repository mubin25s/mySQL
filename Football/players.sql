-- Players Table
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    team_id INT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    nationality VARCHAR(100),
    age INT,
    FOREIGN KEY (team_id) REFERENCES teams (team_id)
);

INSERT INTO
    players (
        player_id,
        team_id,
        name,
        position,
        nationality,
        age
    )
VALUES (
        1,
        1,
        'Erling Haaland',
        'Forward',
        'Norway',
        23
    ),
    (
        2,
        1,
        'Kevin De Bruyne',
        'Midfielder',
        'Belgium',
        32
    ),
    (
        3,
        2,
        'Mohamed Salah',
        'Forward',
        'Egypt',
        31
    ),
    (
        4,
        3,
        'Jude Bellingham',
        'Midfielder',
        'England',
        20
    ),
    (
        5,
        4,
        'Robert Lewandowski',
        'Forward',
        'Poland',
        35
    );