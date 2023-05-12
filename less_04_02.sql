USE less_04;

CREATE TABLE auto_100
(
    id INT NOT NULL,
    mark TEXT NOT NULL,
    count_auto INT NOT NULL
);

INSERT INTO auto_100 (id, mark, count_auto)
VALUES
(1, 'BMW', 20),
(2, 'AUDI', 30),
(3, 'LADA', 15);

SELECT mark, count_auto, 100 - count_auto AS not_mark
FROM auto_100;
