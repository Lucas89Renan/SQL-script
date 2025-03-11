

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

WHERE MaritalStatus = 'S'
	AND GENDER = 'F'
	AND Occupation IN ('Management','Professional')
	AND NumberChildrenAtHome <= 2
	AND TotalChildren IN (3,4)

ORDER BY TotalChildren DESC, NumberCarsOwned DESC, BirthDate DESC
