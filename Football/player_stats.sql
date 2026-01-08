-- Player Stats Table
CREATE TABLE player_stats (
    stat_id INT PRIMARY KEY,
    player_id INT,
    match_id INT,
    goals INT DEFAULT 0,
    assists INT DEFAULT 0,
    yellow_cards INT DEFAULT 0,
    red_cards INT DEFAULT 0,
    minutes_played INT,
    FOREIGN KEY (player_id) REFERENCES players (player_id),
    FOREIGN KEY (match_id) REFERENCES matches (match_id)
);

INSERT INTO
    player_stats (
        stat_id,
        player_id,
        match_id,
        goals,
        assists,
        yellow_cards,
        red_cards,
        minutes_played
    )
VALUES (1, 1, 1, 2, 0, 0, 0, 90),
    (2, 3, 1, 1, 1, 0, 0, 90),
    (3, 4, 2, 1, 0, 1, 0, 85);