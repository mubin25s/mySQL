-- Standings Table
CREATE TABLE standings (
    standing_id INT PRIMARY KEY,
    league_id INT,
    team_id INT,
    played INT DEFAULT 0,
    won INT DEFAULT 0,
    drawn INT DEFAULT 0,
    lost INT DEFAULT 0,
    goals_for INT DEFAULT 0,
    goals_against INT DEFAULT 0,
    points INT DEFAULT 0,
    FOREIGN KEY (league_id) REFERENCES leagues (league_id),
    FOREIGN KEY (team_id) REFERENCES teams (team_id)
);

INSERT INTO
    standings (
        standing_id,
        league_id,
        team_id,
        played,
        won,
        drawn,
        lost,
        points
    )
VALUES (1, 1, 1, 12, 9, 2, 1, 29),
    (2, 1, 2, 12, 8, 3, 1, 27),
    (3, 2, 3, 11, 7, 3, 1, 24);