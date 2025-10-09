CREATE TABLE tblEmployee
(
Id int Primary Key,
Name nvarchar(30),
Salary int,
Gender nvarchar(10),
Departmentld int
)

CREATE TABLE tblDepartment
(
Deptld int Primary Key,
DeptName nvarchar(20)
)

Insert into tblDepartment values (1,'IT')
Insert into tblDepartment values (2, 'Payroll')
Insert into tblDepartment values (3,'HR')
Insert into tblDepartment values (4, 'Admin')




Insert into tblEmployee values (1, 'John', 5000, 'Male', 3)
Insert into tblEmployee values (2, 'Mike', 3400, 'Male', 2)
Insert into tblEmployee values (3, 'Pam', 6000, 'Female', 1)
Insert into tblEmployee values (4, 'Todd', 4800, 'Male', 4)
Insert into tblEmployee values (5, 'Sara', 3200, 'Female', 1)
Insert into tblEmployee values (6, 'Ben', 4800, 'Male', 3)

Select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee. Departmentld = tblDepartment. Deptld

Create View VWEmployeesByDepartment
as
Select Id, Name, Salary, Gender, DeptName
from tblEmployee
join tblDepartment
on tblEmployee. Departmentld = tblDepartment.Deptld

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

