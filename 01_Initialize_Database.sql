-- 1. Create the Database
CREATE DATABASE PortTerminalDB;
GO

USE PortTerminalDB;
GO

-- 2. Create Reference Tables
CREATE TABLE ShippingLines (
    ShippingLineID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    ContactEmail VARCHAR(100)
);
GO

-- 3. Create Main Tables
CREATE TABLE Containers (
    ContainerNumber VARCHAR(20) PRIMARY KEY,
    ShippingLineID INT FOREIGN KEY REFERENCES ShippingLines(ShippingLineID),
    WeightKG INT,
    ArrivalDate DATETIME DEFAULT GETDATE()
);
GO

-- 4. Insert Initial Data
INSERT INTO ShippingLines (CompanyName, ContactEmail)
VALUES ('Maersk Line', 'operations@maersk.com'),
       ('Hapag-Lloyd', 'info@hlag.com');
GO

-- 5. Create Stored Procedures
CREATE PROCEDURE sp_LogContainerArrival
    @ContainerNum VARCHAR(20),
    @ShippingID INT,
    @Weight INT
AS
BEGIN
    INSERT INTO Containers (ContainerNumber, ShippingLineID, WeightKG)
    VALUES (@ContainerNum, @ShippingID, @Weight);
END;
GO
