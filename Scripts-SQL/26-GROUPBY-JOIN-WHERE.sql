
USE ContosoRetailDW

SELECT 
	 FS.channelKey AS CANAL_VENDA
	,DC.ChannelName AS CANAL
	,FS.StoreKey AS LOJA
	,DS.StoreName
	,COUNT(SalesKey) AS TOTAL_VENDAS
	,MIN(SalesAmount) AS MINIMO
	,MAX(SalesAmount) AS MAXIMO
	,SUM(SalesAmount) AS TOTAL_VALOR_VENDAS

FROM FactSales AS FS
-- WHERE SEMPRE DEPOIS DO FROM E DEPOIS DO JOIN
INNER JOIN DimChannel AS DC ON DC.ChannelKey = FS.channelKey
INNER JOIN DimStore AS DS ON DS.StoreKey = FS.StoreKey
WHERE FS.channelKey IN (2,3,4)
GROUP BY FS.channelKey, FS.StoreKey, DC.ChannelName,DS.StoreName
--ORDER SEMPRE POR ULTIMO
ORDER BY FS.channelKey
