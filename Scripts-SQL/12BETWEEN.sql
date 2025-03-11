
USE ContosoRetailDW


SELECT FirstName
	  ,LastName
	  ,BirthDate
	  ,MaritalStatus
	  ,Gender
	  ,TotalChildren
	  ,NumberChildrenAtHome
	  ,Education
	  ,Occupation
	  ,NumberCarsOwned

FROM DimCustomer

WHERE MaritalStatus IS NOT NULL
	  AND Gender = 'F'
	  AND BirthDate BETWEEN '1960-01-01' AND '1980-12-23'

ORDER BY BirthDate DESC

	