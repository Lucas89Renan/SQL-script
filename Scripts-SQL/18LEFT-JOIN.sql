

USE ContosoRetailDW


SELECT TOP (200)
	FS.SalesKey
   ,FS.DateKey
   ,DC.channelKey
   ,DC.ChannelName
   ,DC.LoadDate
   ,FS.ProductKey
   ,FS.PromotionKey
   ,FS.SalesQuantity

FROM FactSales AS FS

LEFT JOIN DimChannel DC ON DC.ChannelKey = FS.channelKey