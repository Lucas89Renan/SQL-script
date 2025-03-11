


USE ContosoRetailDW


SELECT TOP(150)
	 FOS.OnlineSalesKey
	,FOS.DateKey
	,DS.StoreKey
	,DS.StoreName
    ,FOS.ProductKey
	,FOS.CurrencyKey
	,FOS.CustomerKey

FROM FactOnlineSales  AS FOS

INNER JOIN DimStore DS ON DS.StoreKey = FOS.StoreKey
--Trouxe o nome da loja da tabela DimStore para a tabela FactOnlineSales