--ASSIGNING FOREIGN KEYS  

--relationships from Company table to other tables

ALTER TABLE Company
ADD FOREIGN KEY (SectorID) REFERENCES Sector(SectorID);

ALTER TABLE Company 
ADD FOREIGN KEY (SubSectorID) REFERENCES SubSector(SubSectorID);

ALTER TABLE Company
ADD FOREIGN KEY (TagLibraryID) REFERENCES TagLibrary(TagLibraryID);

ALTER TABLE Company 
ADD FOREIGN KEY (FoundersID) REFERENCES Founders(FoundersID);

ALTER TABLE Founders
ADD FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID);

--relationships from other tables to Company table 

ALTER TABLE Contact 
ADD FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID);

ALTER TABLE Location
ADD FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID);

ALTER TABLE Sector
ADD FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID);

ALTER TABLE Status 
ADD FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID);

ALTER TABLE TagLibrary
ADD FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID);

ALTER TABLE SubSector
ADD FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID);

--relationships from SubSector table to Sector table 

ALTER TABLE SubSector
ADD FOREIGN KEY (SectorID) REFERENCES Sector(SectorID);




