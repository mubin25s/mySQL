-- Matches Table
CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    league_id INT,
    stadium_id INT,
    home_team_id INT,
    away_team_id INT,
    match_date DATE,
    home_score INT,
    away_score INT,
    FOREIGN KEY (league_id) REFERENCES leagues (league_id),
    FOREIGN KEY (stadium_id) REFERENCES stadiums (stadium_id),
    FOREIGN KEY (home_team_id) REFERENCES teams (team_id),
    FOREIGN KEY (away_team_id) REFERENCES teams (team_id)
);

INSERT INTO
    matches (
        match_id,
        league_id,
        stadium_id,
        home_team_id,
        away_team_id,
        match_date,
        home_score,
        away_score
    )
VALUES (
        1,
        1,
        1,
        1,
        2,
        '2025-11-25',
        2,
        2
    ),
    (
        2,
        2,
        3,
        3,
        4,
        '2025-10-28',
        1,
        2
    ),
    (
        3,
        1,
        2,
        2,
        1,
        '2026-03-10',
        NULL,
        NULL
    );