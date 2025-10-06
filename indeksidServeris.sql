CREATE Index IX_tblEmployee_Salary
ON DimEmployee (BaseRate ASC)

EXECUTE sp_help DimEmployee

DROP INDEX DimEmployee.IX_tblEmployee_Salary