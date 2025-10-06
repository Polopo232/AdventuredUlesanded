--Funktsioonid
USE AdventureWorksDW2019

SELECT * FROM DimEmployeeS

CREATE FUNCTION fn_ILTVF_GetEmployees()
RETURNS TABLE
AS
RETURN (SELECT EmployeeKey, FirstName, CAST(BirthDate AS DATE) AS DOB
FROM dbo.DimEmployee);

SELECT * FROM fn_ILTVF_GetEmployees()

Create Function fn_MSTVF_GetEmployees()
Returns @Table Table (Id int, Name nvarchar(50), DOB Date)
AS
Begin
Insert into @Table
Select EmployeeKey, FirstName + LastName, Cast(BirthDate as Date)
From DimEmployee
Return
End

SELECT * FROM fn_MSTVF_GetEmployees();
