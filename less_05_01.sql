USE less_05;

CREATE TABLE cars
(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name TEXT NOT NULL,
    Cost INT NOT NULL
);

INSERT INTO cars (Name, Cost)
VALUES
('Audi', 52642),
('Mercedes', 57127),
('Skoda', 9000),
('Volvo', 29000),
('Bentley', 350000),
('Citroen', 21000),
('Hummer', 41400),
('Volkswagen', 21600);

CREATE VIEW cars_before_25000 AS
SELECT *
FROM cars
WHERE Cost < 25000;

ALTER VIEW cars_before_25000 AS
SELECT *
FROM cars
WHERE COST < 30000;

CREATE VIEW audi_and_skoda AS
SELECT *
FROM cars
WHERE Name = 'Audi' OR Name = 'Skoda';

SELECT * FROM audi_and_skoda;