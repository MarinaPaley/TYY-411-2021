--Показать список ProductID, которые содержатся и в таблице Production.Product, и в таблице Sales.SpecialOfferProduct.
SELECT ProductID
FROM Production.Product
INTERSECT
SELECT ProductID
FROM Sales.SpecialOfferProduct;

SELECT ProductID
FROM Production.Product
EXCEPT
SELECT ProductID
FROM Sales.SpecialOfferProduct;