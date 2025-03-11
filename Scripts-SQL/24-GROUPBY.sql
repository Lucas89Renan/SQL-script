
USE ContosoRetailDW

SELECT 
	 FS.channelKey AS CANAL_VENDA
	,FS.StoreKey AS LOJA
	,COUNT(SalesKey) AS TOTAL_VENDAS
	,MIN(SalesAmount) AS MINIMO
	,MAX(SalesAmount) AS MAXIMO
	,SUM(SalesAmount) AS TOTAL_VALOR_VENDAS

FROM FactSales AS FS
GROUP BY FS.channelKey, FS.StoreKey
ORDER BY FS.StoreKey
