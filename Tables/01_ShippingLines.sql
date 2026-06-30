-- Reference Table for Shipping Lines
CREATE TABLE ShippingLines (
    ShippingLineID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    ContactEmail VARCHAR(100)
);
GO

-- Insert Initial Seed Data
INSERT INTO ShippingLines (CompanyName, ContactEmail)
VALUES ('Maersk Line', 'operations@maersk.com'),
       ('Hapag-Lloyd', 'info@hlag.com');
GO
