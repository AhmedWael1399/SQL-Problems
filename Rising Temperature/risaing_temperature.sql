DROP SCHEMA LeetCodeProblems;

CREATE SCHEMA LeetCodeProblems;

USE LeetCodeProblems;

CREATE TABLE Weather (
    id INT PRIMARY KEY,
    RecordDate DATE,
    temperature INT
);

INSERT INTO Weather VALUES 
    (1, "2015-01-01", 10),
    (2, "2015-01-02", 25), 
    (3, "2015-01-03", 20), 
    (4, "2015-01-04", 30); 
     
SELECT i.id FROM Weather as i
INNER JOIN Weather as j
WHERE DATEDIFF(i.recordDate, j.recordDate) = 1 AND i.temperature > j.temperature;