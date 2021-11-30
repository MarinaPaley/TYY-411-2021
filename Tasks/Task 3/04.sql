--Показать список моделей продуктов (ProductModelID), которые имеют несколько цветов (Color), из таблицы Production.Product, используя SELF JOIN.
SELECT DISTINCT 
p1.ProductModelID, p1.Color
FROM Production.Product AS p1
INNER JOIN Production.Product AS p2
ON p1.ProductModelID = p2.ProductModelID
AND p1.Color <> p2.Color;