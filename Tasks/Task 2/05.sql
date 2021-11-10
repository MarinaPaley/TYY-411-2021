--Показать наименование товара, цену и цвет. Разбить ответ на 6 равных частей, упорядочив по возрастанию цены.

--ROW_NUMBER()

SELECT ROW_NUMBER() OVER (ORDER BY ListPrice DESC) AS N
     , [Name]
     , ListPrice
     , Color
FROM Production.Product
WHERE ListPrice > 0;


--RANK()
SELECT RANK() OVER (ORDER BY ListPrice DESC) AS N
     , [Name]
     , ListPrice
     , Color
FROM Production.Product
WHERE ListPrice > 0;

--PARTITION
SELECT RANK() OVER (PARTITION BY [Name] ORDER BY ListPrice DESC) AS N
     , [Name]
     , ListPrice
     , Color
FROM Production.Product
WHERE ListPrice > 0;


--DENSE_RANK()
SELECT DENSE_RANK() OVER (ORDER BY ListPrice DESC) AS N
     , [Name]
     , ListPrice
     , Color
FROM Production.Product
WHERE ListPrice > 0;

--NTILE()
SELECT NTILE(6) OVER (ORDER BY ListPrice) AS N
     , [Name]
     , ListPrice
     , Color
FROM Production.Product
WHERE ListPrice > 0;