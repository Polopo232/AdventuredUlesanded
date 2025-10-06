--Loome indeksi
CREATE Index IX_tblEmployee_Salary
ON DimEmployee (BaseRate ASC)

--Kontrollin indeksit
EXECUTE sp_help DimEmployee

--Kustutan indeksi
DROP INDEX DimEmployee.IX_tblEmployee_Salary