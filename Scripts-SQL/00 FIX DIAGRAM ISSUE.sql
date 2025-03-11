
USE ContosoRetailDW
GO
SELECT SUSER_SNAME(sid), * from sys.database_principals

ALTER AUTHORIZATION ON DATABASE::[ContosoRetailDW] TO [sa]
GO

