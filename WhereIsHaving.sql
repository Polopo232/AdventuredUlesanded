SELECT ProductKey, SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey

SELECT ProductKey, SUM (SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey
HAVING SUM (SalesAmount) > 1000

SELECT * FROM FactInternetSales