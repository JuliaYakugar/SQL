USE less_05;

CREATE TABLE Analysis
(
    an_id INT AUTO_INCREMENT PRIMARY KEY,
    an_name TEXT NOT NULL,
    an_cost INT NOT NULL,
    an_price INT NOT NULL,
    an_group INT
);

INSERT INTO Analysis (an_name, an_cost, an_price)
VALUES
('One_an', 2000, 4000),
('Two_an', 3000, 6000),
('Three_an', 4000, 8000),
('Four_an', 2000, 3500),
('Five_an', 3000, 5500);

CREATE TABLE Groups_an
(
	gr_id INT AUTO_INCREMENT PRIMARY KEY,
    gr_name TEXT,
    gr_temp INT
);

CREATE TABLE Orders
(
	ord_id INT AUTO_INCREMENT PRIMARY KEY,
    ord_datetime DATE NOT NULL,
    ord_an INT
);

INSERT INTO Orders (ord_datetime, ord_an)
VALUES
('2020-02-02', 1),
('2020-02-05', 2),
('2020-02-08', 4),
('2020-02-11', 4),
('2020-02-24', 5);

SELECT an_name, an_price
FROM Analysis
WHERE an_id IN (
	SELECT ord_an 
    FROM Orders
    WHERE ord_datetime >= '2020-02-05' AND ord_datetime <= '2020-02-12'
);
