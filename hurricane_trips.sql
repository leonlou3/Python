
WITH hired_trips(date) AS
(
SELECT DATE(Date) FROM taxi_trips WHERE Date BETWEEN '2012-10-22' AND '2012-11-06'
UNION ALL
SELECT DATE(Date) FROM uber_trips WHERE Date BETWEEN '2012-10-22' AND '2012-11-06'
)

SELECT Date(hourly_weather.Date) AS weather_date, COUNT(hired_trips.DATE) AS 'number_of_days', HourlyPrecipitation, HourlyWindSpeed
FROM hourly_weather
LEFT JOIN hired_trips
ON weather_date = hired_trips.date
WHERE weather_date BETWEEN '2012-10-22' AND '2012-11-06'
GROUP BY weather_date;
