--Показать ID сотрудников (BusinessEntityID), существующую (NOT NULL) квоты продаж (SalesQuota) и дополнительные продажи (Bonus) из таблицы .
SELECT BusinessEntityID
     , SalesQuota
     , Bonus
FROM Sales.SalesPerson
WHERE SalesQuota IS NOT NULL;