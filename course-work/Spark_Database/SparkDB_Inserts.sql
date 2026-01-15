INSERT INTO [User]
(FirstName, LastName, Email, Phone, PasswordHash, RegistrationDate,
 DriverLicenseNumber, DriverLicenseExpiry, Age, IsActive)
VALUES
('Ivan','Petrov','ivan.petrov1@spark.bg','0888000001','hash1','2024-01-01','DL1001','2028-01-01',28,1),
('Georgi','Ivanov','georgi.ivanov2@spark.bg','0888000002','hash2','2024-01-02','DL1002','2027-06-01',34,1),
('Dimitar','Dimitrov','dimitar.dimitrov3@spark.bg','0888000003','hash3','2024-01-03','DL1003','2029-03-12',41,1),
('Petar','Georgiev','petar.georgiev4@spark.bg','0888000004','hash4','2024-01-04','DL1004','2026-09-10',25,1),
('Nikolay','Stoyanov','nikolay.stoyanov5@spark.bg','0888000005','hash5','2024-01-05','DL1005','2028-11-30',37,1),
('Martin','Nikolov','martin.nikolov6@spark.bg','0888000006','hash6','2024-01-06','DL1006','2027-02-15',29,1),
('Kiril','Petkov','kiril.petkov7@spark.bg','0888000007','hash7','2024-01-07','DL1007','2029-08-20',33,1),
('Todor','Hristov','todor.hristov8@spark.bg','0888000008','hash8','2024-01-08','DL1008','2028-12-01',45,1),
('Viktor','Marinov','viktor.marinov9@spark.bg','0888000009','hash9','2024-01-09','DL1009','2027-07-19',26,1),
('Aleksandar','Popov','aleksandar.popov10@spark.bg','0888000010','hash10','2024-01-10','DL1010','2029-01-01',39,1),

('Radoslav','Iliev','radoslav.iliev11@spark.bg','0888000011','hash11','2024-01-11','DL1011','2028-05-05',31,1),
('Stanislav','Kolev','stanislav.kolev12@spark.bg','0888000012','hash12','2024-01-12','DL1012','2027-10-10',27,1),
('Plamen','Angelov','plamen.angelov13@spark.bg','0888000013','hash13','2024-01-13','DL1013','2029-09-09',36,1),
('Borislav','Ganchev','borislav.ganchev14@spark.bg','0888000014','hash14','2024-01-14','DL1014','2028-04-14',42,1),
('Kaloyan','Mihaylov','kaloyan.mihaylov15@spark.bg','0888000015','hash15','2024-01-15','DL1015','2026-12-12',23,1),
('Hristo','Vasilev','hristo.vasilev16@spark.bg','0888000016','hash16','2024-01-16','DL1016','2027-03-03',38,1),
('Denislav','Pavlov','denislav.pavlov17@spark.bg','0888000017','hash17','2024-01-17','DL1017','2029-06-06',34,1),
('Simeon','Radev','simeon.radev18@spark.bg','0888000018','hash18','2024-01-18','DL1018','2028-08-08',29,1),
('Emil','Todorov','emil.todorov19@spark.bg','0888000019','hash19','2024-01-19','DL1019','2027-11-11',40,1),
('Yordan','Dobrev','yordan.dobrev20@spark.bg','0888000020','hash20','2024-01-20','DL1020','2029-02-02',35,1),

('Vasil','Kostov','vasil.kostov21@spark.bg','0888000021','hash21','2024-01-21','DL1021','2028-01-21',44,1),
('Iliyan','Stefanov','iliyan.stefanov22@spark.bg','0888000022','hash22','2024-01-22','DL1022','2026-06-06',28,1),
('Milena','Petrova','milena.petrova23@spark.bg','0888000023','hash23','2024-01-23','DL1023','2027-09-09',32,1),
('Daniel','Rangelov','daniel.rangelov24@spark.bg','0888000024','hash24','2024-01-24','DL1024','2028-03-03',37,1),
('Anton','Zhelev','anton.zhelev25@spark.bg','0888000025','hash25','2024-01-25','DL1025','2029-05-05',41,1),
('Petya','Hadjieva','petya.hadjieva26@spark.bg','0888000026','hash26','2024-01-26','DL1026','2027-04-04',30,1),
('Nadezhda','Kirilova','nadezhda.kirilova27@spark.bg','0888000027','hash27','2024-01-27','DL1027','2028-07-07',34,1),
('Stefan','Zlatanov','stefan.zlatanov28@spark.bg','0888000028','hash28','2024-01-28','DL1028','2029-10-10',39,1),
('Krasimir','Bozhilov','krasimir.bozhilov29@spark.bg','0888000029','hash29','2024-01-29','DL1029','2027-01-01',46,1),
('Lazar','Nedev','lazar.nedev30@spark.bg','0888000030','hash30','2024-01-30','DL1030','2028-12-31',27,1);



INSERT INTO VehicleModel
(Brand, ModelName, BatteryCapacity, Seats, MaxRange, ChargingPortType)
VALUES
('Renault','Zoe',52,5,395,'Type2'),
('BMW','i3',42,4,310,'CCS'),
('Tesla','Model 3',60,5,490,'CCS'),
('VW','ID.3',58,5,420,'CCS'),
('Hyundai','Kona Electric',64,5,484,'CCS'),
('Peugeot','e-208',50,5,340,'Type2'),
('Nissan','Leaf',40,5,270,'CHAdeMO'),
('Kia','EV6',77,5,528,'CCS'),
('Fiat','500e',42,4,320,'Type2'),
('Skoda','Enyaq',62,5,410,'CCS');


INSERT INTO Station
(Name, Address, City, Latitude, Longitude, HasCharging, Capacity)
VALUES
('Sofia Center','1 Tsar Osvoboditel Blvd','Sofia',42.6977,23.3219,1,12),
('Business Park','Business Park Sofia','Sofia',42.6500,23.3799,1,20),
('Plovdiv Center','15 Central Square','Plovdiv',42.1354,24.7453,1,10),
('Varna Sea','8 Primorski Blvd','Varna',43.2074,27.9147,1,14),
('Burgas Port','3 Port Blvd','Burgas',42.4975,27.4700,1,8),
('Stara Zagora Mall','Mall Galleria','Stara Zagora',42.4240,25.6345,1,6),
('Ruse Center','Freedom Square','Ruse',43.8356,25.9657,1,7),
('Pleven Center','1 Vazrazhdane Sq','Pleven',43.4170,24.6067,1,6),
('Blagoevgrad Center','2 Macedonia Sq','Blagoevgrad',42.0209,23.0943,1,5),
('Veliko Tarnovo','Samovodska Charshiya','Veliko Tarnovo',43.0757,25.6172,1,6);


INSERT INTO Vehicle
(VIN, PlateNumber, BatteryLevel, CurrentMileage, Year, Status, Color, LastServiceDate, ModelID)
VALUES
('VIN0000000001','CA1001AB',85,12000,2022,'Available','White','2024-03-01',1),
('VIN0000000002','CA1002AB',90,8000,2023,'Available','Black','2024-03-05',2),
('VIN0000000003','CA1003AB',75,15000,2021,'Available','Gray','2024-02-20',3),
('VIN0000000004','CA1004AB',60,20000,2020,'Available','Blue','2024-01-15',4),
('VIN0000000005','CA1005AB',95,5000,2023,'Available','Red','2024-03-10',5),
('VIN0000000006','CA1006AB',70,18000,2021,'Available','White','2024-02-01',6),
('VIN0000000007','CA1007AB',88,9000,2022,'Available','Black','2024-03-03',7),
('VIN0000000008','CA1008AB',92,6000,2023,'Available','Silver','2024-03-08',8),
('VIN0000000009','CA1009AB',65,22000,2020,'Available','Green','2024-01-20',9),
('VIN0000000010','CA1010AB',80,14000,2021,'Available','Blue','2024-02-25',10),

('VIN0000000011','CA1011AB',85,11000,2022,'Available','White','2024-03-02',1),
('VIN0000000012','CA1012AB',90,7000,2023,'Available','Black','2024-03-06',2),
('VIN0000000013','CA1013AB',78,16000,2021,'Available','Gray','2024-02-18',3),
('VIN0000000014','CA1014AB',62,21000,2020,'Available','Blue','2024-01-18',4),
('VIN0000000015','CA1015AB',93,5500,2023,'Available','Red','2024-03-11',5),
('VIN0000000016','CA1016AB',72,17500,2021,'Available','White','2024-02-03',6),
('VIN0000000017','CA1017AB',87,9500,2022,'Available','Black','2024-03-04',7),
('VIN0000000018','CA1018AB',91,6500,2023,'Available','Silver','2024-03-09',8),
('VIN0000000019','CA1019AB',68,21500,2020,'Available','Green','2024-01-22',9),
('VIN0000000020','CA1020AB',82,14500,2021,'Available','Blue','2024-02-27',10),

('VIN0000000021','CA1021AB',84,12500,2022,'Available','White','2024-03-01',1),
('VIN0000000022','CA1022AB',89,8200,2023,'Available','Black','2024-03-07',2),
('VIN0000000023','CA1023AB',76,15500,2021,'Available','Gray','2024-02-19',3),
('VIN0000000024','CA1024AB',61,20500,2020,'Available','Blue','2024-01-16',4),
('VIN0000000025','CA1025AB',94,5200,2023,'Available','Red','2024-03-12',5),
('VIN0000000026','CA1026AB',73,17000,2021,'Available','White','2024-02-04',6),
('VIN0000000027','CA1027AB',86,9800,2022,'Available','Black','2024-03-05',7),
('VIN0000000028','CA1028AB',90,6800,2023,'Available','Silver','2024-03-10',8),
('VIN0000000029','CA1029AB',67,21800,2020,'Available','Green','2024-01-23',9),
('VIN0000000030','CA1030AB',83,14800,2021,'Available','Blue','2024-02-28',10);



INSERT INTO Rental
(StartTime, EndTime, StartLocation, EndLocation, DistanceDriven, FinalPrice, UserID, VehicleID)
VALUES
('2024-04-01 09:00','2024-04-01 10:00','Sofia Center','Sofia Center',12.5,10.00,1,1),
('2024-04-02 10:00','2024-04-02 11:30','Sofia Center','Business Park',18.0,15.00,2,2),
('2024-04-03 08:30','2024-04-03 09:45','Plovdiv Center','Plovdiv Center',10.2,9.00,3,3),
('2024-04-04 11:00','2024-04-04 12:15','Varna Sea','Varna Sea',14.8,12.00,4,4),
('2024-04-05 09:15','2024-04-05 10:45','Burgas Port','Burgas Port',16.3,14.00,5,5),
('2024-04-06 13:00','2024-04-06 14:00','Sofia Center','Lozenets',11.0,10.00,6,6),
('2024-04-07 15:00','2024-04-07 16:30','Business Park','Sofia Center',19.5,16.00,7,7),
('2024-04-08 10:30','2024-04-08 11:45','Plovdiv Center','Mall Plovdiv',13.0,11.00,8,8),
('2024-04-09 09:00','2024-04-09 10:00','Varna Sea','Asparuhovo',12.0,10.00,9,9),
('2024-04-10 14:00','2024-04-10 15:30','Burgas Port','Sarafovo',20.0,17.00,10,10),

('2024-04-11 09:00','2024-04-11 10:15','Sofia Center','Studentski Grad',15.0,13.00,11,11),
('2024-04-12 11:00','2024-04-12 12:00','Business Park','Mladost',12.5,10.00,12,12),
('2024-04-13 10:00','2024-04-13 11:30','Plovdiv Center','Trakia',18.0,15.00,13,13),
('2024-04-14 09:30','2024-04-14 10:45','Varna Sea','Vladislavovo',14.0,12.00,14,14),
('2024-04-15 13:00','2024-04-15 14:15','Burgas Port','Medem Rudnik',16.5,14.00,15,15),
('2024-04-16 10:00','2024-04-16 11:00','Sofia Center','Nadezhda',11.0,10.00,16,16),
('2024-04-17 15:00','2024-04-17 16:30','Business Park','Druzhba',19.5,16.00,17,17),
('2024-04-18 09:30','2024-04-18 10:45','Plovdiv Center','Smirnenski',13.0,11.00,18,18),
('2024-04-19 08:00','2024-04-19 09:00','Varna Sea','Chaika',12.0,10.00,19,19),
('2024-04-20 14:00','2024-04-20 15:30','Burgas Port','Lazur',20.0,17.00,20,20),

('2024-04-21 09:00','2024-04-21 10:15','Sofia Center','Obelya',15.0,13.00,21,21),
('2024-04-22 11:00','2024-04-22 12:00','Business Park','Lyulin',12.5,10.00,22,22),
('2024-04-23 10:00','2024-04-23 11:30','Plovdiv Center','Kamenitsa',18.0,15.00,23,23),
('2024-04-24 09:30','2024-04-24 10:45','Varna Sea','Galata',14.0,12.00,24,24),
('2024-04-25 13:00','2024-04-25 14:15','Burgas Port','Izgrev',16.5,14.00,25,25),
('2024-04-26 10:00','2024-04-26 11:00','Sofia Center','Orlandovtsi',11.0,10.00,26,26),
('2024-04-27 15:00','2024-04-27 16:30','Business Park','Geo Milev',19.5,16.00,27,27),
('2024-04-28 09:30','2024-04-28 10:45','Plovdiv Center','Karshiaka',13.0,11.00,28,28),
('2024-04-29 08:00','2024-04-29 09:00','Varna Sea','Levski',12.0,10.00,29,29),
('2024-04-30 14:00','2024-04-30 15:30','Burgas Port','Dolno Ezerovo',20.0,17.00,30,30);


INSERT INTO Payment
(Amount, Timestamp, Method, Status, RentalID)
VALUES
(10.00,'2024-04-01 10:05','Card','Completed',1),
(15.00,'2024-04-02 11:35','Card','Completed',2),
(9.00,'2024-04-03 09:50','Card','Completed',3),
(12.00,'2024-04-04 12:20','Card','Completed',4),
(14.00,'2024-04-05 10:50','Card','Completed',5),
(10.00,'2024-04-06 14:05','Card','Completed',6),
(16.00,'2024-04-07 16:35','Card','Completed',7),
(11.00,'2024-04-08 11:50','Card','Completed',8),
(10.00,'2024-04-09 10:05','Card','Completed',9),
(17.00,'2024-04-10 15:35','Card','Completed',10),

(13.00,'2024-04-11 10:20','Card','Completed',11),
(10.00,'2024-04-12 12:05','Card','Completed',12),
(15.00,'2024-04-13 11:35','Card','Completed',13),
(12.00,'2024-04-14 10:50','Card','Completed',14),
(14.00,'2024-04-15 14:20','Card','Completed',15),
(10.00,'2024-04-16 11:05','Card','Completed',16),
(16.00,'2024-04-17 16:35','Card','Completed',17),
(11.00,'2024-04-18 10:50','Card','Completed',18),
(10.00,'2024-04-19 09:05','Card','Completed',19),
(17.00,'2024-04-20 15:35','Card','Completed',20),

(13.00,'2024-04-21 10:20','Card','Completed',21),
(10.00,'2024-04-22 12:05','Card','Completed',22),
(15.00,'2024-04-23 11:35','Card','Completed',23),
(12.00,'2024-04-24 10:50','Card','Completed',24),
(14.00,'2024-04-25 14:20','Card','Completed',25),
(10.00,'2024-04-26 11:05','Card','Completed',26),
(16.00,'2024-04-27 16:35','Card','Completed',27),
(11.00,'2024-04-28 10:50','Card','Completed',28),
(10.00,'2024-04-29 09:05','Card','Completed',29),
(17.00,'2024-04-30 15:35','Card','Completed',30);


INSERT INTO Maintenance
(Type, Description, StartDate, EndDate, Cost, PerformedBy, VehicleID)
VALUES
('Inspection','General inspection','2024-03-01','2024-03-01',50.00,'Spark Service',1),
('BatteryCheck','Battery diagnostics','2024-03-02','2024-03-02',80.00,'Spark Service',2),
('TireChange','Front tires replaced','2024-03-03','2024-03-03',120.00,'Spark Service',3),
('SoftwareUpdate','Firmware update','2024-03-04','2024-03-04',40.00,'Spark Service',4),
('Cleaning','Interior and exterior cleaning','2024-03-05','2024-03-05',30.00,'Spark Service',5),

('BrakeCheck','Brake system inspection','2024-03-06','2024-03-06',60.00,'Spark Service',6),
('CoolingCheck','Cooling system check','2024-03-07','2024-03-07',55.00,'Spark Service',7),
('BatteryCheck','Battery health test','2024-03-08','2024-03-08',75.00,'Spark Service',8),
('Alignment','Wheel alignment','2024-03-09','2024-03-09',65.00,'Spark Service',9),
('Inspection','Annual inspection','2024-03-10','2024-03-10',50.00,'Spark Service',10),

('TireChange','Rear tires replaced','2024-03-11','2024-03-11',110.00,'Spark Service',11),
('SoftwareUpdate','System update','2024-03-12','2024-03-12',45.00,'Spark Service',12),
('BrakeCheck','Brake pads replacement','2024-03-13','2024-03-13',130.00,'Spark Service',13),
('Cleaning','Deep cleaning','2024-03-14','2024-03-14',35.00,'Spark Service',14),
('Inspection','Safety inspection','2024-03-15','2024-03-15',55.00,'Spark Service',15),

('BatteryCheck','Capacity test','2024-03-16','2024-03-16',85.00,'Spark Service',16),
('CoolingCheck','Cooling fluid replaced','2024-03-17','2024-03-17',70.00,'Spark Service',17),
('Alignment','Steering alignment','2024-03-18','2024-03-18',60.00,'Spark Service',18),
('Inspection','Visual inspection','2024-03-19','2024-03-19',45.00,'Spark Service',19),
('SoftwareUpdate','Minor update','2024-03-20','2024-03-20',35.00,'Spark Service',20);


INSERT INTO Charging
(StationID, VehicleID, ChargeKWH, Cost)
VALUES
(1,1,18.5,9.25),
(2,2,22.0,11.00),
(3,3,20.0,10.00),
(4,4,21.5,10.75),
(5,5,17.0,8.50),

(6,6,23.0,11.50),
(7,7,19.5,9.75),
(8,8,24.0,12.00),
(9,9,18.0,9.00),
(10,10,22.5,11.25),

(1,11,21.0,10.50),
(2,12,23.5,11.75),
(3,13,19.0,9.50),
(4,14,20.5,10.25),
(5,15,18.5,9.25),

(6,16,22.0,11.00),
(7,17,24.0,12.00),
(8,18,21.5,10.75),
(9,19,19.5,9.75),
(10,20,23.0,11.50),

(1,21,20.0,10.00),
(2,22,22.5,11.25),
(3,23,18.0,9.00),
(4,24,21.0,10.50),
(5,25,19.0,9.50);
