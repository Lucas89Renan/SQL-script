

USE ContosoRetailDW

SELECT TOP(200)
	  ProductKey
	 ,UnitPrice
FROM DimProduct
WHERE UnitPrice < (SELECT AVG(UnitPrice)FROM DimProduct)
ORDER BY UnitPrice DESC