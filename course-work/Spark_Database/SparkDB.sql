CREATE DATABASE SparkDB;
GO
USE SparkDB;
GO


CREATE TABLE [User] (
    UserID INT IDENTITY PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(20),
    PasswordHash NVARCHAR(255),
    RegistrationDate DATETIME,
    DriverLicenseNumber NVARCHAR(50),
    DriverLicenseExpiry DATE,
    Age INT,
    IsActive BIT
);


CREATE TABLE VehicleModel (
    ModelID INT IDENTITY PRIMARY KEY,
    Brand NVARCHAR(50),
    ModelName NVARCHAR(50),
    BatteryCapacity INT,
    Seats INT,
    MaxRange INT,
    ChargingPortType NVARCHAR(20)
);


CREATE TABLE Vehicle (
    VehicleID INT IDENTITY PRIMARY KEY,
    VIN NVARCHAR(50) UNIQUE,
    PlateNumber NVARCHAR(20),
    BatteryLevel INT,
    CurrentMileage INT,
    Year INT,
    Status NVARCHAR(20),
    Color NVARCHAR(30),
    LastServiceDate DATE,
    ModelID INT NOT NULL,
    FOREIGN KEY (ModelID) REFERENCES VehicleModel(ModelID)
);


CREATE TABLE Station (
    StationID INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100),
    Address NVARCHAR(200),
    City NVARCHAR(50),
    Latitude FLOAT,
    Longitude FLOAT,
    HasCharging BIT,
    Capacity INT
);


CREATE TABLE Rental (
    RentalID INT IDENTITY PRIMARY KEY,
    StartTime DATETIME,
    EndTime DATETIME,
    StartLocation NVARCHAR(100),
    EndLocation NVARCHAR(100),
    DistanceDriven FLOAT,
    FinalPrice DECIMAL(10,2),
    UserID INT NOT NULL,
    VehicleID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);


CREATE TABLE Payment (
    PaymentID INT IDENTITY PRIMARY KEY,
    Amount DECIMAL(10,2),
    Timestamp DATETIME,
    Method NVARCHAR(30),
    Status NVARCHAR(20),
    RentalID INT UNIQUE NOT NULL,
    FOREIGN KEY (RentalID) REFERENCES Rental(RentalID)
);


CREATE TABLE Maintenance (
    MaintenanceID INT IDENTITY PRIMARY KEY,
    Type NVARCHAR(50),
    Description NVARCHAR(255),
    StartDate DATE,
    EndDate DATE,
    Cost DECIMAL(10,2),
    PerformedBy NVARCHAR(100),
    VehicleID INT NOT NULL,
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

CREATE TABLE Charging(
	ChargeID INT IDENTITY PRIMARY KEY,
	StationID INT NOT NULL,
	VehicleID INT NOT NULL,
	ChargeKWH FLOAT,
	Cost FLOAT, 
	FOREIGN KEY (StationID) REFERENCES Station(StationID),
	FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);


