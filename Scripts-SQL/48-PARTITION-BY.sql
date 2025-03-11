

SELECT [TrackId]
      ,[Name]
      ,[Composer]
      ,[Milliseconds]
      ,[Bytes]
      ,[UnitPrice]
	  ,ROW_NUMBER() OVER(ORDER BY Milliseconds) ROW_NUMBER_
	  ,ROW_NUMBER() OVER(PARTITION BY Composer ORDER BY Milliseconds) RN_WITH_PARTITIONBY
  FROM [Chinook].[dbo].[Track]
  WHERE Composer IS NOT NULL