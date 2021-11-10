--Вывести профессии из таблицы HumanResources.Employee, где суммарное количество человек, принятых до 2009 года, больше 1
SELECT COUNT(JobTitle) AS PeopleCount
     , JobTitle
FROM HumanResources.Employee
WHERE HireDate <= '2009'
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1;

--SELECT COUNT(OrganizationLevel)
--FROM HumanResources.Employee