--Показать квоту продаж (SalesQuota) и поля FirstName, LastName из таблиц Person.Person, Sales. SalesPerson.
SELECT p.FirstName
     , p.LastName
     , s.SalesQuota
FROM Person.Person AS p
INNER JOIN Sales. SalesPerson AS s
ON p.BusinessEntityID = s.BusinessEntityID;