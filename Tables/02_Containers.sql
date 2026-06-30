-- Main Tracking Table for Containers
CREATE TABLE Containers (
    ContainerNumber VARCHAR(20) PRIMARY KEY,
    ShippingLineID INT FOREIGN KEY REFERENCES ShippingLines(ShippingLineID),
    WeightKG INT,
    ArrivalDate DATETIME DEFAULT GETDATE()
);
GO
