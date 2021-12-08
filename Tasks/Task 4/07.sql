--Показать список товаров, цена которых больше любой средней цены в своем цвете

--ANY ( > для каждого цвета)
SELECT p1.[Name], p1.ListPrice, p1.Color
FROM Production.Product AS p1
WHERE p1.ListPrice > ANY
    (SELECT AVG(p2.ListPrice)
     FROM Production.Product AS p2
     WHERE p1.Color = p2.Color
     AND p2.ListPrice > 0
    )
ORDER BY p1.Color

SELECT AVG(p2.ListPrice), p2.Color
FROM Production.Product AS p2
WHERE p2.ListPrice > 0
GROUP BY p2.Color
ORDER BY 1;


--ANY ()
SELECT p1.[Name], p1.ListPrice, p1.Color
FROM Production.Product AS p1
WHERE p1.ListPrice < ANY 
    (SELECT AVG(p2.ListPrice)
     FROM Production.Product AS p2
     WHERE p2.Color = p1.Color
     AND p2.ListPrice > 0
    )
ORDER BY p1.Color;

--ALL ( < $1401.95)
SELECT p1.[Name], p1.ListPrice, p1.Color
FROM Production.Product AS p1
WHERE p1.ListPrice < ALL
    (SELECT AVG(p2.ListPrice)
     FROM Production.Product AS p2
     WHERE p1.Color = p2.Color
     AND p2.ListPrice > 0
    )
ORDER BY p1.Color