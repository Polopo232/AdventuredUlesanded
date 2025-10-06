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

-- Loon unikaalse mitteklastriindeksi ees- ja perekonnanime j‰rgi
Create Unique NonClustered Index UIX_tblEmployee_FirstName_LastName
On tblEmployee(FirstName, LastName)

--Loon mitte unikaalse ja mitte klastritiseeritud indeksi
ALTER TABLE tblEmployee 
ADD CONSTRAINT UQ_tblEmployee_City 
UNIQUE NONCLUSTERED (City)

--- Lisan veerule City unikaalse ja mitteklastriindeksi, et v‰‰rtused oleksid unikaalsed.
CREATE UNIQUE INDEX IX_tblEmployee_City
ON tblEmployee(City)
WITH IGNORE_DUP_KEY