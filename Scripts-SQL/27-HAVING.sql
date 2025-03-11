

USE ContosoRetailDW

SELECT TOP(200)
	 DPC.ProductCategoryName AS CATEGORIA
	,DPS.ProductSubcategoryName AS SUBCATEGORIA
	,SUM(SalesQuantity) AS QUANT_VENDAS
	,SUM(SalesAmount) AS VALOR_TOTAL

FROM FactOnlineSales AS FOS
INNER JOIN DimProduct AS DP ON DP.ProductKey = FOS.ProductKey
INNER JOIN DimProductSubcategory AS DPS ON DPS.ProductSubcategoryKey = DP.ProductSubcategoryKey
INNER JOIN DimProductCategory AS DPC ON DPC.ProductCategoryKey = DPS.ProductCategoryKey
WHERE DPC.ProductCategoryName IN ('Audio','Computers')
GROUP BY DPC.ProductCategoryName, DPS.ProductSubcategoryName
HAVING SUM(SalesQuantity) < 250000
ORDER BY SUM(SalesAmount) DESC