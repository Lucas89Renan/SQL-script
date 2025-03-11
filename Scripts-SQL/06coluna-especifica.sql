
USE ContosoRetailDW

	SELECT StoreKey
	   ,StoreName
	   ,EmployeeCount
	   ,StorePhone
	   ,StoreType

	FROM DimStore
	WHERE EmployeeCount > 35