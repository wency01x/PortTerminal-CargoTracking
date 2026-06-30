-- 1. Create the Database
CREATE DATABASE PortTerminalDB;
GO

-- Switch to the new database
USE PortTerminalDB;
GO

-- 2. Create Reference Tables (Lookup Tables)
CREATE TABLE ShippingLines (
    ShippingLineID INT IDENTITY(1,1) PRIMARY KEY, -- IDENTITY auto-increments (1, 2, 3...)
    CompanyName VARCHAR(100) NOT NULL,
    ContactEmail VARCHAR(100)
);

CREATE TABLE YardLocations (
    LocationID INT IDENTITY(1,1) PRIMARY KEY,
    Block VARCHAR(10) NOT NULL, -- e.g., 'Block A'
    RowNumber INT NOT NULL,     -- e.g., Row 12
    Tier INT NOT NULL,          -- e.g., Stacked 3 high
    IsOccupied BIT DEFAULT 0    -- 0 = False (Empty), 1 = True (Occupied)
);

-- 3. Create the Main Table (The Fact Table)
CREATE TABLE Containers (
    ContainerNumber VARCHAR(20) PRIMARY KEY, -- Real container numbers look like 'MSKU1234567'
    ShippingLineID INT FOREIGN KEY REFERENCES ShippingLines(ShippingLineID),
    Size INT CHECK (Size IN (20, 40, 45)), -- Ensures we only accept 20ft, 40ft, or 45ft containers
    WeightKG INT,
    ArrivalDate DATETIME DEFAULT GETDATE(), -- Automatically logs the exact time it arrives
    DepartureDate DATETIME NULL,            -- NULL because it hasn't left yet
    CurrentLocationID INT FOREIGN KEY REFERENCES YardLocations(LocationID) NULL,
    Status VARCHAR(20) DEFAULT 'Arrived'
);
