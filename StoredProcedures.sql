


CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics


EXEC TEST



CREATE PROCEDURE Temp_Employee
AS 
CREATE TABLE #temp_employee(
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_employee
SELECT Jobttitle, Count(Jobttitle), Avg(Age), Avg(Salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY Jobttitle

SELECT * 
FROM #temp_employee

EXEC Temp_Employee @JobTitle = 'Salesman'