
USE ContosoRetailDW


SELECT TOP(150)
	 FM.MachineKey
	,FM.CostAmount
	,DM.MachineName
	,DM.MachineDescription
	,DS.StoreName
	,DS.StoreType
	,DG.ContinentName
	,DG.RegionCountryName
	,DT.SalesTerritoryName
	,DC.DateFirstPurchase
	,DC.Gender
	,DC.FirstName + ' ' + DC.LastName AS Complete_Name
	,DC.Occupation

FROM FactITMachine AS FM

INNER JOIN DimMachine AS DM ON DM.MachineKey = FM.MachineKey
INNER JOIN DimStore AS DS ON DS.StoreKey = DM.StoreKey
INNER JOIN DimGeography AS DG ON DG.GeographyKey = DS.GeographyKey
INNER JOIN DimSalesTerritory AS DT ON DT.GeographyKey = DG.GeographyKey
INNER JOIN DimCustomer AS DC ON DC.GeographyKey = DG.GeographyKey
WHERE DC.FirstName + ' ' + DC.LastName IS NOT NULL 
AND DG.RegionCountryName = 'Germany'

ORDER BY CostAmount