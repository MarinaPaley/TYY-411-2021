--Показать комбинированный список таблиц Sales.SalesOrderDetail по полям SalesOrderID, UnitPrice, Sales.SalesOrderHeader по полям SalesOrderID, SubTotal, используя UNION.
SELECT SalesOrderID
     , UnitPrice
FROM Sales.SalesOrderDetail
UNION
SELECT SalesOrderID
     , SubTotal
FROM Sales.SalesOrderHeader