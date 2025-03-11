USE Primeiro_banco

	INSERT INTO Clientes
	(
		[ID_CLIENTE]
		,[NOME]
		,[DATA_CADASTRO]
		,[EMAIL]
	)

	VALUES
	(
		2
		,'Pedro Augusto'
		,GETDATE()
		,'22Pedroalcaaugusto123.com'
	)

	SELECT TOP(10) 
		ID_CLIENTE
		,NOME
		,DATA_CADASTRO
		,EMAIL
	FROM [Primeiro_banco].[dbo].[Clientes]