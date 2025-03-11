USE Primeiro_banco

UPDATE Clientes
SET ID_CLIENTE = 3
WHERE EMAIL = '22Pedroalcaaugusto123.com'


UPDATE Clientes

SET	
	EMAIL = 'PedroAugusto123@gmail.com',
	NOME = 'Pedro Antonio'
WHERE ID_CLIENTE = 2

SELECT TOP (10)
	ID_CLIENTE
	,NOME
	,DATA_CADASTRO
	,EMAIL
FROM [Primeiro_banco].[dbo].[Clientes]