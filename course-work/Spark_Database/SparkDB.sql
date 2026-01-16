CREATE DATABASE SparkDB;
GO
USE SparkDB;
GO


CREATE TABLE [User] (
    UserID INT IDENTITY PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(20) UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    RegistrationDate DATETIME NOT NULL,
    DriverLicenseNumber NVARCHAR(50) NOT NULL,
    DriverLicenseExpiry DATE NOT NULL,
    Age INT,
    IsActive BIT
);


CREATE TABLE VehicleModel (
    ModelID INT IDENTITY PRIMARY KEY,
    Brand NVARCHAR(50) NOT NULL,
    ModelName NVARCHAR(50) NOT NULL,
    BatteryCapacity INT NOT NULL,
    Seats INT NOT NULL,
    MaxRange INT NOT NULL,
    ChargingPortType NVARCHAR(20) NOT NULL
);


CREATE TABLE Vehicle (
    VehicleID INT IDENTITY PRIMARY KEY,
    VIN NVARCHAR(50) UNIQUE NOT NULL,
    PlateNumber NVARCHAR(20) NOT NULL,
    BatteryLevel INT NOT NULL,
    CurrentMileage INT NOT NULL,
    Year INT NOT NULL,
    Status NVARCHAR(20) NOT NULL,
    Color NVARCHAR(30),
    LastServiceDate DATE NOT NULL,
    ModelID INT NOT NULL,
    FOREIGN KEY (ModelID) REFERENCES VehicleModel(ModelID)
);


CREATE TABLE Station (
    StationID INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100),
    Address NVARCHAR(200) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    Latitude FLOAT NOT NULL,
    Longitude FLOAT NOT NULL,
    HasCharging BIT NOT NULL,
    Capacity INT NOT NULL
);


CREATE TABLE Rental (
    RentalID INT IDENTITY PRIMARY KEY,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME NOT NULL,
    StartLocation NVARCHAR(100) NOT NULL,
    EndLocation NVARCHAR(100) NOT NULL,
    DistanceDriven FLOAT NOT NULL,
    FinalPrice DECIMAL(10,2) NOT NULL,
    UserID INT NOT NULL,
    VehicleID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);


CREATE TABLE Payment (
    PaymentID INT IDENTITY PRIMARY KEY,
    Amount DECIMAL(10,2) NOT NULL,
    Timestamp DATETIME NOT NULL,
    Method NVARCHAR(30) NOT NULL,
    Status NVARCHAR(20) NOT NULL,
    RentalID INT UNIQUE NOT NULL,
    FOREIGN KEY (RentalID) REFERENCES Rental(RentalID)
);


CREATE TABLE Maintenance (
    MaintenanceID INT IDENTITY PRIMARY KEY,
    Type NVARCHAR(50) NOT NULL,
    Description NVARCHAR(255),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    PerformedBy NVARCHAR(100) NOT NULL,
    VehicleID INT NOT NULL,
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

CREATE TABLE Charging(
	ChargeID INT IDENTITY PRIMARY KEY,
	StationID INT NOT NULL,
	VehicleID INT NOT NULL,
	ChargeKWH FLOAT NOT NULL,
	Cost FLOAT NOT NULL, 
	FOREIGN KEY (StationID) REFERENCES Station(StationID),
	FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);


