DROP SCHEMA LeetCodeProblems;

CREATE SCHEMA LeetCodeProblems;

USE LeetCodeProblems;

CREATE TABLE Employee(

id INT PRIMARY KEY,
`name` VARCHAR(30),
salary INT,
managerId INT 

);

--Initialization
INSERT INTO Employee VALUES 
    (1, "Joe", 70000, 3),
    (2, "Henry", 80000, 4),
    (3, "Sam", 60000, Null),
    (4, "Max", 90000, Null);

--Solution
SELECT e.name As Employee FROM Employee as e INNER JOIN Employee as m ON e.managerId = m.id
WHERE (e.salary > m.salary);