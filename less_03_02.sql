USE less_03;

# 1
SELECT city, sname, snum, comn 
FROM salespeople;

#2
SELECT rating, cname 
FROM customers
WHERE city = 'San Jose';

#3
SELECT DISTINCT snum
FROM orders;

#4
SELECT *
FROM customers
WHERE cname LIKE 'G%';

#5
SELECT *
FROM orders
WHERE amt > 1000;

#6
SELECT MIN(amt)
FROM orders;

#7
SELECT *
FROM customers
WHERE rating > 100 AND NOT city = 'Rome';

#8
SELECT *
FROM workers
ORDER BY salary;

SELECT *
FROM workers
ORDER BY salary DESC;

#9
SELECT *
FROM 
	(SELECT * FROM workers ORDER BY salary DESC LIMIT 5)
workers ORDER BY salary;

#10
SELECT speciality, SUM(salary) AS 'Сумма'
FROM workers
GROUP BY speciality
HAVING SUM(salary) > 100000;
