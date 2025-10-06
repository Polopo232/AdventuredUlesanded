--Funktsioonid
USE AdventureWorksDW2019

SELECT * FROM DimEmployeeS

CREATE FUNCTION fn_ILTVF_GetEmployees()
RETURNS TABLE
AS
RETURN (SELECT EmployeeKey, FirstName, CAST(BirthDate AS DATE) AS DOB
FROM dbo.DimEmployee);

SELECT * FROM fn_ILTVF_GetEmployees()


