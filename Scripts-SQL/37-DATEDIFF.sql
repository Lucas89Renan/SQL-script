

USE ContosoRetailDW


--RETORNA O TOTAL DE HORAS DESDE A DATA ESPECIFICADA AT� O DIA ATUAL
SELECT DATEDIFF(HOUR, '2025-01-01', GETDATE()) HORAS
--QUANTOS DIA DE VIDA EU TENHO?
SELECT DATEDIFF(DAY,'2004-01-11',GETDATE()) IDADE_EM_DIAS



SELECT TOP 200
	 DateKey DATA_
	,GETDATE() HOJE
	,DATEDIFF(MONTH, DateKey, GETDATE()) TOTAL_MESES
FROM FactOnlineSales
ORDER BY 1 DESC
