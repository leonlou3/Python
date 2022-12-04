
CREATE TABLE IF NOT EXISTS hourly_weather_schema
(
  Date DATE,
  time TIME,
  HourlyPrecipitation INTEGER,
  HourlyWindGustSpeed INTEGER,
  id INTEGER PRIMARY KEY
)

CREATE TABLE IF NOT EXISTS daily_weather_schema
(
  Date DATE,
  DailyPrecipitation INTEGER,
  DailyAverageWindSpeed INTEGER,
  id INTEGER PRIMARY KEY
)

CREATE TABLE IF NOT EXISTS taxi_trips    
(
  Date DATE,
  Hour TIME,
  pickup_longitude FLOAT,
  pickup_latitude FLOAT,
  dropoff_longitude FLOAT,
  dropoff_latitude FLOAT,
  distance FLOAT,
  tip_amount FLOAT,
  id INTEGER PRIMARY KEY
)

CREATE TABLE IF NOT EXISTS daily_weather_schema
(
  Date DATE,
  Hour TIME,
  pickup_longitude FLOAT,
  pickup_latitude FLOAT,
  dropoff_longitude FLOAT,
  dropoff_latitude FLOAT,
  distance FLOAT,
  id INTEGER PRIMARY KEY
)

CREATE TABLE IF NOT EXISTS sun_data 
(
    Date DATE,
    Sunrise INT,
    Sunset INT,
    id INTEGER PRIMARY KEY AUTOINCREMENT
)
