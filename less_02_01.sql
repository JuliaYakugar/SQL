USE less_02;

CREATE TABLE IF NOT EXISTS sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL,
    count_product INT DEFAULT 0
);

INSERT INTO sales (order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

/*
SELECT * FROM sales;
*/

SELECT *,
CASE
	WHEN count_product < 100
		THEN 'Матенький заказ'
	WHEN count_product >= 100 AND count_product <= 300
		THEN 'Средний заказ'
	WHEN count_product > 300
		THEN 'Большой заказ'
END AS type_sales
FROM sales;