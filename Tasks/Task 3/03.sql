-- Показать список товаров (поле Name), в котором указано, есть ли у товара тип продажи (TransactionType) или нет, из таблиц Production.TransactionHistory, Production.Product, используя RIGHT OUTER JOIN.
SELECT p.[Name]
     , t.TransactionType
FROM Production.TransactionHistory AS t
RIGHT OUTER JOIN Production.Product AS p
ON t.ProductID = p.ProductID
WHERE t.TransactionType IS NOT NULL