CREATE TABLE [tblEmployee]
(
[Id] int Primary Key,
[FirstName] nvarchar(50),
[LastName] nvarchar(50),
[Salary] int,
[Gender] nvarchar(10),
[City] nvarchar(50)
)

Insert into tblEmployee Values(1, 'Mike', 'Sandoz', 4500, 'Male', 'New York')
Insert into tblEmployee Values (2, 'Sara', 'Menco', 6500, 'Female', 'London')
Insert into tblEmployee Values (3, 'John', 'Barber', 2500, 'Male', 'Sydney')
Insert into tblEmployee Values (4, 'Pam', 'Grove', 3500, 'Female', 'Toronto')
Insert into tblEmployee Values (5, 'James', 'Mirch', 7500, 'Male', 'London')

--Loomine uus indeks IX_tblEmployee_Salary
Create NonClustered Index IX_tblEmployee_Salary
On tblEmployee (Salary Asc)