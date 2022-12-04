
Select strftime('%w', Date) As weekday, Count(*) As amount
From uber_trips
Group By weekday
Order By amount DESC;
