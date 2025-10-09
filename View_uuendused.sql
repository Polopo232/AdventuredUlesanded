Create view vWEmployeesDataExceptSalary
as
Select Id, Name, Gender, Departmentld
from tblEmployee

SELECT * FROM vWEmployeesDataExceptSalary

Update vWEmployeesDataExceptSalary
Set Name = 'Mikey' Where Id = 2

Delete from vWEmployeesDataExceptSalary where Id = 2
Insert into vWEmployeesDataExceptSalary values (2, 'Mikey', 'Male', 2)

