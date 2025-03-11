

USE ContosoRetailDW



SELECT TOP(200)
	 FS.ProductKey  CHAVE_PRODUTO
	,FS.UnitPrice  PRECO_UNIDADE
	,FS.UnitCost CUSTO_UNIDADE


FROM FactSales FS
WHERE FS.ProductKey IN(
	SELECT 
		ProductKey
	FROM DimProduct
	WHERE UnitPrice <=(SELECT AVG(UnitPrice)FROM DimProduct)
)
ORDER BY UnitPrice DESC


--NOT IN
SELECT TOP(200)
	 FS.ProductKey  CHAVE_PRODUTO
	,FS.UnitPrice  PRECO_UNIDADE
	,FS.UnitCost CUSTO_UNIDADE


FROM FactSales FS
WHERE FS.ProductKey  NOT IN(
	SELECT 
		ProductKey
	FROM DimProduct
	WHERE UnitPrice <=(SELECT AVG(UnitPrice)FROM DimProduct)
)
ORDER BY UnitPrice ASC
