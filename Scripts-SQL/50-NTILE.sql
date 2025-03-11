


SELECT [TrackId]
      ,[Name]
      ,[Composer]
      ,[Milliseconds]
      ,[UnitPrice]
	  ,ROW_NUMBER() OVER(ORDER BY UnitPrice) ROW_NUMBER_
	  ,RANK() OVER (ORDER BY UnitPrice) RANKING
	  ,DENSE_RANK() OVER (ORDER BY UnitPrice) DENSE_RANKING
	  ,NTILE(5) OVER(ORDER BY UnitPrice) N_TILE
	  FROM [Chinook].[dbo].[Track]





SELECT [TrackId]
      ,[Name]
      ,[Composer]
	  ,[GenreId]
      ,[Milliseconds]
      ,[UnitPrice]
	  ,ROW_NUMBER() OVER(ORDER BY UnitPrice) ROW_NUMBER_
	  ,RANK() OVER (ORDER BY UnitPrice) RANKING
	  ,DENSE_RANK() OVER (ORDER BY UnitPrice) DENSE_RANKING
	  --NTILE CLASSIFICA OS DADOS ASSIM COMO O ALGORITIMO DE CLASSIFICAÇÃO DE ML
	  ,NTILE(5) OVER(PARTITION BY GenreId ORDER BY UnitPrice) N_TILE
	  FROM [Chinook].[dbo].[Track]
