-- Stored Procedure to Log Container Arrivals
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
