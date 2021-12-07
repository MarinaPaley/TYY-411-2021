--Показать список продуктов (поле Name), в котором указано, есть ли у продукта количество на складе или нет, из таблиц Production.Product, Production.WorkOrder, используя LEFT OUTER JOIN
SELECT p.[Name], w.StockedQty
FROM Production.Product AS p
LEFT OUTER JOIN Production.WorkOrder AS w
ON w.ProductID = p.ProductID
WHERE w.StockedQty IS NOT NULL;