SELECT *
FROM Sales.SalesTerritory

SELECT *
FROM Sales.SalesPerson
WHERE EXISTS 
(
    SELECT *
    FROM Sales.SalesTerritory
    WHERE [Name] LIKE '%Canada%'
);