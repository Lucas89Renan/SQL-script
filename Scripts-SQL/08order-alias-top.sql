
USE ContosoRetailDW

	SELECT TOP(20)Title AS TITULO
		,FirstName AS NOME
		,MiddleName AS SEG_NOME
		,LastName AS SOBRENOME
		,MaritalStatus AS ESTADO_CIVIL
		,Gender AS SEXO
		,EmailAddress AS EMAIL
		,BirthDate AS DATA_NASCIMENTO
		,Education AS EDUCACAO
		,NumberChildrenAtHome AS FILHOS_EM_CASA
		,TotalChildren AS TOTAL_FILHOS
		,Occupation AS OCUPACAO
		,DateFirstPurchase AS DATA_PRIMEIRA_COMPRA
		, NumberCarsOwned AS VEICULOS

		FROM DimCustomer

		ORDER BY [SEXO] DESC, [ESTADO_CIVIL] DESC, [VEICULOS] DESC