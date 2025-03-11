
USE ContosoRetailDW


SELECT TOP(150)
	 OnlineSalesKey
	,DateKey
	,DimStore.StoreKey
	,DimStore.StoreName
	,DimStore.
    ,ProductKey
	,CurrencyKey
	,CustomerKey

FROM FactOnlineSales

INNER JOIN DimStore ON DimStore.StoreKey = FactOnlineSales.StoreKey
--Trouxe o nome da loja da tabela DimStore para a tabela FactOnlineSales
