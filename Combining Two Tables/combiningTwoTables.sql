DROP SCHEMA LeetCodeProblems;

CREATE SCHEMA LeetCodeProblems;

USE LeetCodeProblems;

CREATE TABLE Person (
    personID INT PRIMARY KEY,
    lastName VARCHAR(30),
    firstName VARCHAR(30)
);

CREATE TABLE `Address` (
    addressID INT PRIMARY KEY,
    personID INT,
    city VARCHAR(30),
    `state` VARCHAR(30)
);


--Initialization
INSERT INTO Person VALUES
    (1, "Wang", "Allen"),
    (2, "Alice", "Bob");

INSERT INTO `Address`  VALUES
    (1, 2,"New York City", "New York"),
    (2, 3, "Leetcode", "California");






--Solution
SELECT firstName, lastName, city, state FROM Person 
LEFT OUTER JOIN Address ON personID;