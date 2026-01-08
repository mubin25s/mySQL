-- Stadiums Table
CREATE TABLE stadiums (
    stadium_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    capacity INT
);

INSERT INTO
    stadiums (
        stadium_id,
        name,
        city,
        capacity
    )
VALUES (
        1,
        'Etihad Stadium',
        'Manchester',
        53400
    ),
    (
        2,
        'Anfield',
        'Liverpool',
        61276
    ),
    (
        3,
        'Santiago Bernabéu',
        'Madrid',
        81044
    ),
    (
        4,
        'Spotify Camp Nou',
        'Barcelona',
        99354
    ),
    (
        5,
        'Allianz Stadium',
        'Turin',
        41507
    );