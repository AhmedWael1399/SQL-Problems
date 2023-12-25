DROP SCHEMA LeetCodeProblems;

CREATE SCHEMA LeetCodeProblems;

USE LeetCodeProblems;

CREATE TABLE Employee(

empId INT PRIMARY KEY,
`name` VARCHAR(30),
supervisor INT,
salary INT

);

CREATE TABLE Bonus(

empId INT PRIMARY KEY,
bonus INT

);

INSERT INTO Employee VALUES
    (3, "Brad", null, 4000),
    (1, "John", 3, 1000),
    (2, "Dan", 3, 2000),
    (4, "Thomas", 3, 4000);

INSERT INTO Bonus VALUES
    (2, 500),
    (4, 2000);

SELECT `name`, bonus FROM Employee LEFT OUTER JOIN Bonus ON Employee.empId = Bonus.empId
WHERE bonus is null OR bonus < 1000;