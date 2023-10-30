DROP SCHEMA LeetCodeProblems;

CREATE SCHEMA LeetCodeProblems;

USE LeetCodeProblems;

CREATE TABLE Person (
    id INT PRIMARY KEY,
    email VARCHAR(30)
);


INSERT INTO Person VALUES
    (1, "a@b.com"),
    (2, "c@d.com"),
    (3, "a@b.com");

SELECT email FROM Person 
GROUP BY email
HAVING COUNT(email) > 1;
