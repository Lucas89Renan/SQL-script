
USE ContosoRetailDW

SELECT TOP(200)
	 FS.SalesKey
	,FS.SalesAmount
	,FS.ProductKey
	,DP.ProductName
	,DP.ProductSubcategoryKey
	,DPS.ProductSubcategoryName
	,DPC.ProductCategoryKey
	,DPC.ProductCategoryName
FROM FactSales AS FS

INNER JOIN DimProduct AS DP ON DP.ProductKey = FS.ProductKey
INNER JOIN DimProductSubcategory AS DPS ON DPS.ProductSubcategoryKey = DP.ProductSubcategoryKey
INNER JOIN DimProductCategory AS DPC ON DPC.ProductCategoryKey = DPS.ProductCategoryKey

ORDER BY ProductCategoryName