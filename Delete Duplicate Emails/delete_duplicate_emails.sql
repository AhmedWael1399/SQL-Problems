DROP SCHEMA LeetCodeProblems;

CREATE SCHEMA LeetCodeProblems;

USE LeetCodeProblems;

CREATE TABLE Person (
    id INT PRIMARY KEY,
    email VARCHAR(30)
);


INSERT INTO Person VALUES
    (1, "john@example.com"),
    (2, "bob@example.com"),
    (3, "john@example.com");

DELETE a FROM Person AS a, Person AS b
WHERE a.email = b.email AND a.id > b.id;    