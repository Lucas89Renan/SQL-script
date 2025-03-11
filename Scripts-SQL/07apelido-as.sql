
USE ContosoRetailDW

	SELECT SalesKey AS CHAVE_VENDA
		,DateKey AS CHAVE_DATA
		,StoreKey AS CHAVE_LOJA
		,ProductKey AS CHAVE_PRODUTO
		,SalesQuantity AS QUANT_VENDAS
		,UnitCost AS PRECO_UNIDADE
		,TotalCost AS CUSTO_TOTAL

	FROM FactSales

	--GROUP BY StoreKey
	ORDER BY TotalCost DESC