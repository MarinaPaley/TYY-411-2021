--Показать фамилию самого молодого сотрудника
SELECT *
FROM Person.Person;

SELECT *
FROM HumanResources.Employee;

SELECT MAX(BirthDate)
FROM HumanResources.Employee;

SELECT BusinessEntityID
FROM HumanResources.Employee
WHERE BirthDate = 
    (SELECT MAX(BirthDate)
     FROM HumanResources.Employee);

SELECT p.LastName
FROM HumanResources.Employee AS e
INNER JOIN Person.Person AS p
ON e.BusinessEntityID = p.BusinessEntityID
WHERE e.BirthDate = 
    (SELECT MAX(BirthDate)
     FROM HumanResources.Employee);