

USE ContosoRetailDW

SELECT TOP (100)
	 DG.RegionCountryName AS PAIS
	,DS.StoreName AS NOME_LOJA
	,SUM(SalesQuantity) AS QUANT_VENDA
	,SUM(FS.SalesAmount) AS VALOR_TOTAL

FROM FactSales FS
INNER JOIN DimStore  AS DS ON  DS.StoreKey = FS.StoreKey
INNER JOIN DimGeography AS DG ON DG.GeographyKey = DS.GeographyKey
INNER JOIN DimSalesTerritory AS DT ON DT.GeographyKey = DG.GeographyKey

GROUP BY  DG.RegionCountryName, DS.StoreName
WITH ROLLUP