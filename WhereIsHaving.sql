SELECT ProductKey, SUM(SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey

SELECT ProductKey, SUM (SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey
HAVING SUM (SalesAmount) > 1000

SELECT ProductKey, SUM (SalesAmount) AS TotalSales
FROM FactInternetSales
GROUP BY ProductKey
WHERE SUM (SalesAmount) > 1000

select EnglishProductName, SUM(UnitPrice) as TotalSales
from FactInternetSales sale
join DimProduct prod
on prod.ProductKey = sale.ProductKey
where EnglishProductName in ('AWC Logo Cap')
group by EnglishProductName;

select EnglishProductName, SUM(UnitPrice) as TotalSales
from FactInternetSales sale
join DimProduct prod
on prod.ProductKey = sale.ProductKey
group by EnglishProductName
having EnglishProductName in ('AWC Logo Cap');

SELECT * FROM FactInternetSales