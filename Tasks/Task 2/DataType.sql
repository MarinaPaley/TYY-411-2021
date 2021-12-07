--Data Types
DECLARE @I INT;
SET @I = (SELECT COUNT(*) AS CountRows
FROM Production.Product);

PRINT @I;
SELECT @I AS 'Количество строк';

DECLARE @D DECIMAL(5,2) = 3.1415;
PRINT @D;

DECLARE @Date DATE = GETDATE();
SELECT @Date;

--CHAR(MAX)
DECLARE @CharFirst CHAR(5) = '123';
SELECT @CharFirst;

DECLARE @CharSecond CHAR(5) = '123';
SELECT @CharSecond;

SELECT @CharFirst + @CharSecond;

--Не проходит
--DECLARE @Char1 CHAR(2) = 'フェザー';
--SELECT @Char1;

--VARCHAR(MAX)
DECLARE @Char2 VARCHAR(5) = '123';
SELECT @Char2;

DECLARE @Char3 VARCHAR(5) = '123';
SELECT @Char3;

SELECT @Char2 + @Char3;

--NCHAR(MAX)
DECLARE @NChar1 NCHAR(10) = '1';
SELECT @NChar1;

DECLARE @NChar2 NCHAR(10) = '1';
SELECT @NChar2;

SELECT @NChar1 + @NChar2;
--NVARCHAR(MAX)

DECLARE @NVARChar1 NVARCHAR(10) = '1';
SELECT @NVARChar1;

DECLARE @NVARChar2 NVARCHAR(10) = '1';
SELECT @NVARChar2;

SELECT @NVARChar1 + @NVARChar2;

--CAST
DECLARE @INT INT= 5;
DECLARE @CAST_INT VARCHAR(10) = CAST(@INT AS VARCHAR(10));
SELECT @CAST_INT;

SELECT
     COALESCE(Size, Color, 
         CAST([Weight] AS VARCHAR(10)), 'default'
             ) AS Mesuarements
FROM Production.Product;

DECLARE @Date_Str VARCHAR(20) = CONVERT(VARCHAR(20),GETDATE(), 104);
SELECT @Date_Str;