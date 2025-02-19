--AVERAGE_DELAY_TIME_PER_AIRLINE

SELECT UniqueCarrier,
       AVG(DepDelay) AS AvgDepDelay,
       AVG(ArrDelay) AS AvgArrDelay
FROM dbo.flightss
GROUP BY UniqueCarrier
ORDER BY AvgDepDelay DESC;

USE airline;

CREATE TABLE average_delay_time_per_airline (
UniqueCarrier VARCHAR(20),
DepDelay FLOAT,
ArrDelay FLOAT
)


INSERT INTO average_delay_time_per_airline (UniqueCarrier, DepDelay, ArrDelay)
SELECT UniqueCarrier,
       AVG(DepDelay) AS AvgDepDelay,
	   AVG(ArrDelay) AS AvgArrDelay
FROM dbo.flightss
GROUP BY UniqueCarrier
ORDER BY AvgDepDelay, AvgArrDelay DESC;

SELECT * FROM average_delay_time_per_airline;