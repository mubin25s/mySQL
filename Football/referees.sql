-- Referees Table
CREATE TABLE referees (
    referee_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(100),
    experience_years INT
);

INSERT INTO
    referees (
        referee_id,
        name,
        nationality,
        experience_years
    )
VALUES (
        1,
        'Michael Oliver',
        'England',
        12
    ),
    (
        2,
        'Anthony Taylor',
        'England',
        14
    ),
    (
        3,
        'Daniele Orsato',
        'Italy',
        20
    ),
    (
        4,
        'Szymon Marciniak',
        'Poland',
        18
    ),
    (
        5,
        'Clément Turpin',
        'France',
        16
    );