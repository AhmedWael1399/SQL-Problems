DROP SCHEMA LeetCodeProblems;

CREATE SCHEMA LeetCodeProblems;

USE LeetCodeProblems;

CREATE TABLE Activity (

    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT
);

ALTER TABLE Activity ADD CONSTRAINT pl_evt PRIMARY KEY(player_id, event_date);

INSERT INTO Activity VALUES
    (1, 2, "2016-03-01", 5),
    (1, 2, "2016-05-02", 6),
    (2, 3, "2016-06-25", 1),
    (3, 1, "2016-03-02", 0),
    (3, 4, "2016-07-03", 5);

SELECT player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;

