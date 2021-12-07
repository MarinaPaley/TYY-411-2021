--Показать модель продукта с минимальной ценой.
SELECT MIN(ListPrice)
FROM Production.Product
WHERE ListPrice > 0;

SELECT ProductModelID
FROM Production.Product
WHERE ListPrice = 
(
    SELECT MIN(ListPrice)
    FROM Production.Product
    WHERE ListPrice > 0
);

SELECT m.[Name]
FROM Production.ProductModel AS m
INNER JOIN Production.Product AS p
ON m.ProductModelID = p.ProductModelID
WHERE p.ListPrice = 
(
    SELECT MIN(ListPrice)
    FROM Production.Product
    WHERE ListPrice > 0
);