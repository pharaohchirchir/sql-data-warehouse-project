/*==================================================================
Create Database and Schemas
====================================================================
Purpose:
	This script creates a new database named "Datawarehouse" after checking if it already exists. 
	The script sets up three schemas within the database: bronze, silver gold.

WARNING:
Running this scripts deletes the database if it already Exists. All data in the database will be permanently deleted, proceed with caution.
*/

-- Create Database Datawarehouse

USE master;
go

-- Drop and recreate the Datawarehouse db

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END
go

CREATE DATABASE Datawarehouse;

USE Datawarehouse;

go

-- Create Schemas
CREATE SCHEMA bronze;
go

CREATE SCHEMA silver;
go

CREATE SCHEMA gold;
go


