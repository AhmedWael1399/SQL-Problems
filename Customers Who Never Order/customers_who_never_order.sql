DROP SCHEMA LeetCodeProblems;

CREATE SCHEMA LeetCodeProblems;

USE LeetCodeProblems;

CREATE TABLE Customers (
 id INT PRIMARY KEY,
 `name` VARCHAR(30)
);

CREATE TABLE Orders (
 id INT PRIMARY KEY,
 customerID INT
);

ALTER TABLE Orders ADD FOREIGN KEY (customerID) REFERENCES Customers(id);

INSERT INTO Customers VALUES 
    (1, "Joe"),
    (2, "Henry"),
    (3, "Sam"),
    (4, "Max");

INSERT INTO Orders VALUES 
    (1, 3),
    (2, 1);

SELECT name AS Customers FROM Customers
LEFT OUTER JOIN Orders ON Customers.id = Orders.customerID
WHERE customerID IS NULL; 