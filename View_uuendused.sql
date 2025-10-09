Create view vWEmployeesDataExceptSalary
as
Select EmployeeKey, FirstName, Gender, DepartmentName
from DimEmployee

SELECT * FROM vWEmployeesDataExceptSalary

Update vWEmployeesDataExceptSalary
Set FirstName = 'Mikey' Where EmployeeKey = 2

Delete from vWEmployeesDataExceptSalary where EmployeeKey = 2
Insert into vWEmployeesDataExceptSalary values (2, 'Mikey', 'Male', 2)

Create view vwEmployeeDetailsByDepartment
as
Select EmployeeKey, FirstName, BaseRate, Gender, DepartmentName
from DimEmployee
join DimSalesTerritory
on DimEmployee.EmployeeKey = DimSalesTerritory.SalesTerritoryKey

SELECT * FROM vwEmployeeDetailsByDepartment

Update vwEmployeeDetailsByDepartment
set DepartmentName='IT' where FirstName = 'John'