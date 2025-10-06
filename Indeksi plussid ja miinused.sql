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

--Leidsin inimesi, kelle palk on suurem kui 4 tuhat ja väiksem kui 8 tuhat. 
SELECT * FROM tblEmployee WHERE Salary > 4000 and Salary < 8000

--Kustutasin inimese, kelle palk on 2500
Delete from tblEmployee where Salary = 2500

--muutis inimese palka 7500-lt 9000-le
Update tblEmployee Set Salary = 9000 where Salary = 7500

--palga vaatamine sorteerimata ja sorteeritud (DESC)
SELECT * FROM tblEmployee ORDER BY Salary
SELECT * FROM tblEmployee ORDER BY Salary DESC

--Näita palka ja nende koguarvu 
SELECT Salary, COUNT(Salary) AS Total FROM tblEmployee GROUP BY Salary


