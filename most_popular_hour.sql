
Select Hour As hours, Count(*) As amount
From taxi_trips
Group By hours
Order By amount DESC;
