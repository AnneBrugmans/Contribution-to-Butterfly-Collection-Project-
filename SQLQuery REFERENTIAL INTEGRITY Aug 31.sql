--Alter tables to add columns for the purpose of defining relationship and adding Foreign Keys
--ENSURING REFERENTIAL INTEGRITY

--relationships from Company table to other tables

ALTER TABLE Company 
ADD SectorID int NOT NULL,
	SubSectorID int NOT NULL,
	TagLibraryID int NOT NULL,
	FoundersID int NOT NULL;

--relationships from other tables to Company table 
	
ALTER TABLE Founders
ADD CompanyID int NOT NULL;

ALTER TABLE Contact
ADD CompanyID int NOT NULL;

ALTER TABLE Location
ADD CompanyID int NOT NULL;

ALTER TABLE Sector
ADD CompanyID int NOT NULL;

ALTER TABLE Status
ADD CompanyID int NOT NULL

ALTER TABLE TagLibrary
ADD CompanyID int NOT NULL;

ALTER TABLE SubSector 
ADD CompanyID int NOT NULL;

--relationships from SubSector table to Sector table

ALTER TABLE SubSector 
ADD SectorID int NOT NULL;

