/* 
Script Ourpose:
 The Script creates and new database and delets if exits in the sys
 
*/





USE master;


IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN	
	ALTER DATABASE DataWarehouse SET SINGLE_USE WIHT ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO