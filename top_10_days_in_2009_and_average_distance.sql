
WITH hired_trips AS
(
SELECT Date, distance FROM taxi_trips WHERE Date BETWEEN '2009-01-01' AND '2009-12-31'
UNION ALL
SELECT Date, distance FROM uber_trips WHERE Date BETWEEN '2009-01-01' AND '2009-12-31'
)


SELECT Date, COUNT(*) AS 'number_of_hired_rides', distance / COUNT(*) AS 'daily_average_distance'
FROM hired_trips 
GROUP BY Date 
ORDER BY number_of_hired_rides DESC
LIMIT 10;
