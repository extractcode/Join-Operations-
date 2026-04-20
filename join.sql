-- Create the Employees table

CREATE TABLE Employees (
  EmployeeID INT, 
  Name VARCHAR(50), 
  DeptID INT
);

-- Add data into the Employees table

INSERT INTO Employees (EmployeeID, Name, DeptID) 
VALUES 
  (1, 'Alice', 10), 
  (2, 'Bob', 20), 
  (3, 'Charlie', NULL);

-- Create the Departments table

CREATE TABLE Departments (
  DeptID INT, 
  DeptName VARCHAR(50)
);

-- Add data into the Departments table

INSERT INTO Departments (DeptID, DeptName) 
VALUES 
  (10, 'IT'), 
  (20, 'Sales'), 
  (30, 'Marketing');

-- Performing Join Operations

-- Performing Inner Join Operations

SELECT Employees.Name, Departments.DeptName
FROM Employees
INNER JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- Performing Left Join Operations

SELECT Employees.Name, Departments.DeptName
FROM Employees
LEFT JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- Performing Right Join Operations

SELECT Employees.Name, Departments.DeptName
FROM Employees
RIGHT JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- Performing Full Outer Join Operations

SELECT Employees.Name, Departments.DeptName
FROM Employees
FULL OUTER JOIN Departments ON Employees.DeptID = Departments.DeptID;



