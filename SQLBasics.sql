--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)


--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--Jobttitle varchar(50),
--Salary int,
--)

--INSERT INTO EmployeeDemographics VALUES
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

INSERT INTO EmployeeSalary VALUES
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)



SELECT TOP 5 *
From EmployeeDemographics


SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT DISTINCT(Gender)
FROM EmployeeDemographics


SELECT COUNT(LastName) as LastNameCount
FROM EmployeeDemographics

SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

SELECT MAX(Salary)
FROM EmployeeSalary

SELECT MIN(Salary)
FROM EmployeeSalary

SELECT AVG(Salary)
FROM EmployeeSalary


-- If we are accessing the table from a different database like master
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'


SELECT *
FROM EmployeeDemographics
WHERE Age <= 32


SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'


SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

--- People whose lastname starts with 'S'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%o%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'  --  Will return row with lastname Scott


SELECT *
FROM EmployeeDemographics
WHERE LastName IS NOT NULL  --  Returns all rows as there are no null values

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim','Michael','Toby') 

SELECT *
FROM EmployeeDemographics

SELECT Gender, COUNT(Gender) as GenderCount
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender

SELECT Gender, COUNT(Gender) as GenderCount
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY GenderCount DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender

SELECT *
FROM EmployeeDemographics
ORDER BY Age , Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

--     SAME OUTPUT AS ABOVE
--SELECT *
--FROM EmployeeDemographics
--ORDER BY 4 DESC, 5 DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC

