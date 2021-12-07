--CUBE
SELECT 
      SUM(ListPrice) AS SumPrice
     , Color
     , GROUPING(Color) AS ColorNotNull
     , ProductLine
     , GROUPING(ProductLine) AS PR
     --, Size
     --, GROUPING(Size) AS S
FROM Production.Product
WHERE ListPrice > 0
GROUP BY CUBE(Color, ProductLine, Size)
EXCEPT
--ROLLUP
SELECT 
      SUM(ListPrice) AS SumPrice
     , Color
     , GROUPING(Color) AS ColorNotNull
     , ProductLine
     , GROUPING(ProductLine) AS PR
     --, Size
     --, GROUPING(Size) AS S
FROM Production.Product
WHERE ListPrice > 0
GROUP BY ROLLUP(Color, ProductLine, Size)