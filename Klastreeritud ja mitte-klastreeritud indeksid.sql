CREATE TABLE [tblEmployee]
(
[Id] int Primary Key,
[Name] nvarchar(50),
[Salary] int,
[Gender] nvarchar(10),
[City] nvarchar(50)
)

Insert into tblEmployee Values (3, 'John', 4500, 'Male','New York')
Insert into tblEmployee Values(1, 'Sam', 2500, 'Male', 'London')
Insert into tblEmployee Values (4, 'Sara', 5500, 'Female', 'Tokyo')
Insert into tblEmployee Values (5, 'Todd', 3100, 'Male', 'Toronto')
Insert into tblEmployee Values (2, 'Pam', 6500, 'Female', 'Sydney')

SELECT * FROM tblEmployee