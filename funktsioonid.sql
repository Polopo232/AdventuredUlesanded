--Funktsioonid
USE AdventureWorksDW2019

SELECT * FROM DimEmployee

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

CREATE TABLE [dbo].[tblEmployees]
(
	[Id] [int] Primary Key,
	[Name] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [nvarchar] (10) NULL,
	[Departmentld] [int] NULL
)

Insert into tblEmployees values (1, 'Sam', '1980-12-30 00:00:00.000', 'Male', 1)
Insert into tblEmployees values (2, 'Pam', '1982-09-01 12:02:36.260', 'Female', 2)
Insert into tblEmployees values (3, 'John', '1985-08-22 12:03:30.370', 'Male', 1)
Insert into tblEmployees values (4, 'Sara', '1979-11-29 12:59:30.670', 'Female', 3)
Insert into tblEmployees values (5, 'Todd', '1978-11-29 12:59:30.670', 'Male', 1)

CREATE FUNCTION fn_GetEmployee_NameById (@Id INT)
RETURNS NVARCHAR(20)
AS
BEGIN
RETURN (SELECT FirstName FROM DimEmployee WHERE EmployeeKey = @Id);
END

SELECT EmployeeKey, dbo.fn_GetEmployee_NameById(1) AS Name FROM DimEmployee

Alter Function fn_GetEmployee_NameById (@Id int)
Returns nvarchar(20)
With Encryption
as
Begin
Return (Select FirstName from DimEmployee Where EmployeeKey = @Id)
End

SELECT EmployeeKey, dbo.fn_GetEmployee_NameById(1) AS Name FROM DimEmployee

Alter Function fn_GetEmployee_NameById (@Id int)
Returns nvarchar(20)
With SchemaBinding
as
Begin
Return (Select FirstName from dbo.DimEmployee Where EmployeeKey = @Id)
End

SELECT EmployeeKey, dbo.fn_GetEmployee_NameById(1) AS Name FROM DimEmployee

Create Table #PersonDetails(Id int, Name nvarchar(20))

Insert into #PersonDetails Values(1, 'Mike')
Insert into #PersonDetails Values (2, 'John')
Insert into #PersonDetails Values (3, 'Todd')

select * from #PersonDetails

Select name from tempdb..sysobjects
where name like '#PersonDetails%'

Create Procedure spCreateLocalTempTable
as
Begin
Create Table #PersonDetails (Id int, Name nvarchar(20))
Insert into #PersonDetails Values(1, 'Mike')
Insert into #PersonDetails Values (2, 'John')
Insert into #PersonDetails Values (3, 'Todd')
Select * from #PersonDetails
End

Create Table ##EmployeeDetails(Id int, Name nvarchar(20))

CREATE Index IX_tblEmployee_Salary
ON DimEmployee (BaseRate ASC)

EXECUTE sp_help DimEmployee