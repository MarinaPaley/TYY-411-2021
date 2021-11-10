--Из таблицы Sales.SalesTerritory показать поля TerritoryID, [Name] и CountryRegionCode. Все значения поля CountryRegionCode, равные US, заменить на NULL. Названия полей оставить без изменений.
SELECT TerritoryID
     , [Name]
     , NULLIF(CountryRegionCode, 'US')
FROM Sales.SalesTerritory;