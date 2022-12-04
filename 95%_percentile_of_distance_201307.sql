
WITH hired_trips AS
(
SELECT Date, distance FROM taxi_trips WHERE Date BETWEEN '2013-07-01' AND '2013-08-01'
UNION ALL
SELECT Date, distance FROM uber_trips WHERE Date BETWEEN '2013-07-01' AND '2013-08-01'
)

SELECT distance AS '95%_percentile_of_distance'
FROM hired_trips
ORDER BY distance ASC
LIMIT 1
OFFSET (SELECT COUNT(*) FROM hired_trips) * 95 / 100 - 1;
