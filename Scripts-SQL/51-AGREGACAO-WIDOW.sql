
USE BikeStores


SELECT 
	 PP.CategoryID CATEGORIA
	,COUNT(*) PRODUTOS_TOTAIS
	
FROM Production.Product  PP
GROUP BY PP.CategoryID



SELECT 
	 PP.CategoryID CATEGORIA
	,PP.BrandID BRAND
	,COUNT(*) PRODUTOS_TOTAIS
	
FROM Production.Product  PP
GROUP BY PP.BrandID,PP.CategoryID;


WITH TOTAL AS(
	SELECT 
	 PP.CategoryID CATEGORIA
	,COUNT(*) PRODUTOS_TOTAIS
	
FROM Production.Product  PP
GROUP BY PP.CategoryID
)
SELECT 
	 PP.CategoryID CATEGORIA
	,PP.BrandID BRAND
	,COUNT(*) PRODUTOS_TOTAIS
	,T.PRODUTOS_TOTAIS
	,CAST(COUNT(*)*1.0/ SUM(COUNT(*)) OVER(PARTITION BY CategoryID) * 100 AS DECIMAL(4,2)) PERCENTUAL_DO_TOTAL
	
FROM Production.Product  PP
INNER JOIN TOTAL T ON T.CATEGORIA = PP.CategoryID
GROUP BY PP.CategoryID, PP.BrandID ,T.PRODUTOS_TOTAIS

