-- Transfers Table
CREATE TABLE transfers (
    transfer_id INT PRIMARY KEY,
    player_id INT,
    from_team_id INT,
    to_team_id INT,
    transfer_date DATE,
    fee DECIMAL(15, 2),
    FOREIGN KEY (player_id) REFERENCES players (player_id),
    FOREIGN KEY (from_team_id) REFERENCES teams (team_id),
    FOREIGN KEY (to_team_id) REFERENCES teams (team_id)
);

INSERT INTO
    transfers (
        transfer_id,
        player_id,
        from_team_id,
        to_team_id,
        transfer_date,
        fee
    )
VALUES (
        1,
        1,
        NULL,
        1,
        '2022-07-01',
        60000000.00
    ),
    (
        2,
        4,
        NULL,
        3,
        '2023-07-01',
        103000000.00
    ),
    (
        3,
        3,
        NULL,
        2,
        '2017-07-01',
        42000000.00
    );