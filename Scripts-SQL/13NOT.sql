


USE ContosoRetailDW


SELECT FirstName AS NOME
	  ,LastName AS SOBRENOME
	  ,BirthDate AS NASCIMENTO
	  ,MaritalStatus AS ESTADO_CIVIL
	  ,Gender AS SEXO
	  ,TotalChildren AS TOTAL_FILHOS
	  ,NumberChildrenAtHome AS FILHOS_EM_CASA
	  ,Education AS EDUCACAO
	  ,Occupation AS OCUPACAO
	  ,NumberCarsOwned AS VEICULOS

FROM DimCustomer

WHERE MaritalStatus IS NOT NULL
	  AND NOT MaritalStatus = 'M'
	  AND Gender = 'F'
	  AND NumberChildrenAtHome NOT IN (1, 2, 3, 4)
	  AND NOT BirthDate BETWEEN '1913-01-01' AND '1950-01-01'
	  AND TotalChildren BETWEEN 1 AND 4

ORDER BY BirthDate DESC