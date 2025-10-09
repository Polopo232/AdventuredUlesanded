CREATE VIEW VWEmployeesByDepartment AS
SELECT e.EmployeeKey AS Id, e.FirstName, e.LastName AS Name, e.Gender, o.OrganizationName AS DeptName
FROM DimEmployee e
JOIN DimOrganization o ON e.EmployeeKey = o.OrganizationKey;

SELECT * FROM VWEmployeesByDepartment

CREATE VIEW vWITDepartment_Employees AS
SELECT e.EmployeeKey AS Id, e.FirstName, e.LastName AS Name, e.BaseRate, e.Gender, e.DepartmentName AS DeptName
FROM DimEmployee e
JOIN DimSalesTerritory d ON e.EmployeeKey = d.SalesTerritoryKey
WHERE d.SalesTerritoryRegion = 'Canada';

SELECT * FROM vWITDepartment_Employees

Create View vWEmployeesNonConfidentialData
as
Select EmployeeKey, FirstName, Gender, DepartmentName
from DimEmployee
join DimSalesTerritory
on DimEmployee.EmployeeKey = DimSalesTerritory.SalesTerritoryKey

DROP VIEW vWEmployeesNonConfidentialData

SELECT * FROM vWEmployeesNonConfidentialData;

Create View vWEmployeesCountByDepartment
as
Select DepartmentName, COUNT(EmployeeKey) as TotalEmployees
from DimEmployee
join DimSalesTerritory
on DimEmployee. EmployeeKey = DimSalesTerritory.SalesTerritoryKey
Group By DepartmentName

SELECT * FROM vWEmployeesCountByDepartment

