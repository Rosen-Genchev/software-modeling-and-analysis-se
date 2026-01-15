CREATE FUNCTION fn_CalculateRentalPrice
(
    @StartTime DATETIME,
    @EndTime DATETIME,
    @Distance FLOAT
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @BaseFee DECIMAL(10,2) = 2.00;
    DECLARE @PricePerKm DECIMAL(10,2) = 0.50;
    DECLARE @PricePerMinute DECIMAL(10,2) = 0.20;

    DECLARE @DurationMinutes INT;
    SET @DurationMinutes = DATEDIFF(MINUTE, @StartTime, @EndTime);

    RETURN
        @BaseFee
        + (@Distance * @PricePerKm)
        + (@DurationMinutes * @PricePerMinute);
END;
GO


CREATE PROCEDURE sp_CreateRental
    @UserID INT,
    @VehicleID INT,
    @StartTime DATETIME,
    @EndTime DATETIME,
    @StartLocation NVARCHAR(100),
    @EndLocation NVARCHAR(100),
    @DistanceDriven FLOAT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @FinalPrice DECIMAL(10,2);

    SET @FinalPrice = dbo.fn_CalculateRentalPrice
    (
        @StartTime,
        @EndTime,
        @DistanceDriven
    );

    INSERT INTO Rental
    (
        StartTime,
        EndTime,
        StartLocation,
        EndLocation,
        DistanceDriven,
        FinalPrice,
        UserID,
        VehicleID
    )
    VALUES
    (
        @StartTime,
        @EndTime,
        @StartLocation,
        @EndLocation,
        @DistanceDriven,
        @FinalPrice,
        @UserID,
        @VehicleID
    );

    SELECT SCOPE_IDENTITY() AS NewRentalID;
END;
GO


CREATE TRIGGER tr_Rental_Insert_UpdateVehicleStatus
ON Rental
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE v
    SET v.Status = 'Rented'
    FROM Vehicle v
    INNER JOIN inserted i
        ON v.VehicleID = i.VehicleID;
END;
GO
