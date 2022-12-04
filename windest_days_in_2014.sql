
WITH hired_trips(date) AS
(
SELECT DATE(Date) FROM taxi_trips WHERE Date BETWEEN '2014-01-01' AND '2014-12-31'
UNION ALL
SELECT DATE(Date) FROM uber_trips WHERE Date BETWEEN '2014-01-01' AND '2014-12-31'
)

SELECT date , COUNT(*) AS 'trips' FROM hired_trips
GROUP BY date
HAVING date IN 
(
SELECT DATE(Date) 
FROM daily_weather 
WHERE DATE(Date) BETWEEN '2014-01-01' AND '2014-12-31' 
ORDER BY DailyWindSpeed DESC 
LIMIT 10
)
