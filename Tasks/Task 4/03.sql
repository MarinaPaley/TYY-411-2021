--Показать среднюю цену в максимальных ценах в категории цвет
SELECT MAX(ListPrice)
     , Color
FROM Production.Product
GROUP BY Color;

SELECT AVG(T.MaxListPrice) AS AvgMaxListrice
FROM (
    SELECT MAX(ListPrice) AS MaxListPrice
    FROM Production.Product
    GROUP BY Color
) AS T