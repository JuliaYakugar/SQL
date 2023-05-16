USE less_05;

CREATE TABLE trains
(
    train_id INT,
    station TEXT NOT NULL,
    station_time TIME
);

INSERT INTO trains (train_id, station, station_time)
VALUES
(110, 'San Francisco', '10:00:00'),
(110, 'Redwood City', '10:54:00'),
(110, 'Palo Alto', '11:02:00'),
(110, 'San Jose', '12:35:00'),
(120, 'San Francisco', '11:00:00'),
(120, 'Palo Alto', '12:49:00'),
(120, 'San Jose', '13:30:00');

SELECT *, 
	TIMEDIFF(LEAD(station_time) OVER (PARTITION BY train_id), station_time) AS 'time_to_next'
FROM trains;