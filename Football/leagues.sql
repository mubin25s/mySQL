-- Leagues Table
CREATE TABLE leagues (
    league_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100),
    division INT
);

INSERT INTO
    leagues (
        league_id,
        name,
        country,
        division
    )
VALUES (
        1,
        'Premier League',
        'England',
        1
    ),
    (2, 'La Liga', 'Spain', 1),
    (3, 'Serie A', 'Italy', 1),
    (4, 'Bundesliga', 'Germany', 1),
    (5, 'Ligue 1', 'France', 1);