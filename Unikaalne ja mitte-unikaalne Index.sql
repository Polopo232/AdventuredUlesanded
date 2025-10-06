CREATE TABLE [tblEmployee]
(
[Id] int Primary Key,
[FirstName] nvarchar(50),
[LastName] nvarchar(50),
[Salary] int,
[Gender] nvarchar(10),
[City] nvarchar(50)
)

EXECUTE sp_helpindex tblEmployee

Insert into tblEmployee Values(1, 'Mike', 'Sandoz', 4500, 'Male', 'New York')
Insert into tblEmployee Values(1, 'John', 'Menco', 2500, 'Male', 'London')