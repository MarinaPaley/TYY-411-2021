--Показать максимальную среднюю цену в категории цвет
SELECT AVG(ListPrice), Color
FROM Production.Product
GROUP BY Color;

--Легкий путь (MAX, MIN)
SELECT TOP 1 AVG(ListPrice) AS MAX_Avg
      , Color
FROM Production.Product
GROUP BY Color
ORDER BY AVG(ListPrice) DESC;