CREATE VIEW VWEmployeesByDepartment AS
SELECT 
    e.EmployeeKey AS Id,
    e.FirstName, 
	e.LastName AS Name,
    e.Gender,
    o.OrganizationName AS DeptName
FROM DimEmployee e
JOIN DimOrganization o ON e.EmployeeKey = o.OrganizationKey;

SELECT * FROM VWEmployeesByDepartment

Create View vWITDepartment_Employees
as
Select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee. Departmentld = tblDepartment.Deptld
where tblDepartment. DeptName = 'IT'

SELECT * FROM vWITDepartment_Employees

Create View vWEmployeesNonConfidentialData
as
Select Id, Name, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee. Departmentld = tblDepartment.Deptld

SELECT * FROM vWEmployeesNonConfidentialData

Create View vWEmployeesCountByDepartment
as
Select DeptName, COUNT(Id) as TotalEmployees
from tblEmployee
join tblDepartment
on tblEmployee. Departmentld = tblDepartment.Deptld
Group By DeptName

SELECT * FROM vWEmployeesCountByDepartment

