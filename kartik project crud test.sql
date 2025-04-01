INSERT INTO Brand (BrandName) VALUES ('BMW');

INSERT INTO CarModel (BrandID, BodyStyle, DriveWheels, Price) VALUES 
(3, 'sedan', 'rwd', 35000);

INSERT INTO Engine (EngineType, NumOfCylinders, EngineSize, FuelSystem, Horsepower, PeakRPM) VALUES 
('mpfi', 'six', 300, 'mpfi', 250, 6500);

INSERT INTO Fuel (FuelType, Aspiration, FuelSystem) VALUES 
('gas', 'std', 'mpfi');

INSERT INTO Dimensions (WheelBase, Length, Width, Height, CurbWeight) VALUES 
(110.0, 200.0, 75.0, 55.0, 3500);

INSERT INTO Performance (CompressionRatio, CityMPG, HighwayMPG) VALUES 
(10.0, 20, 30);

INSERT INTO Transmission (NumOfDoors, DriveWheels) VALUES 
('four', 'rwd');

INSERT INTO Car (ModelID, EngineID, FuelID, DimensionID, PerformanceID, TransmissionID) VALUES 
(11, 11, 11, 11, 11, 11);
SELECT * FROM Car;
SELECT cm.BrandID, b.BrandName, cm.BodyStyle, cm.Price, e.EngineType, f.FuelType, p.CityMPG, p.HighwayMPG
FROM Car c
JOIN CarModel cm ON c.ModelID = cm.ModelID
JOIN Brand b ON cm.BrandID = b.BrandID
JOIN Engine e ON c.EngineID = e.EngineID
JOIN Fuel f ON c.FuelID = f.FuelID
JOIN Performance p ON c.PerformanceID = p.PerformanceID
WHERE cm.BrandID = 3;
UPDATE CarModel
SET Price = 37000
WHERE ModelID = 11;
UPDATE Fuel
SET FuelType = 'diesel'
WHERE FuelID = 11;
DELETE FROM Car WHERE ModelID = 11;
DELETE FROM Brand WHERE BrandID = 3;
