--DELAY_CAUSES_BREAKDOWN

SELECT UniqueCarrier,
       AVG(DepDelay) AS AvgDepDelay, 
       AVG(ArrDelay) AS AvgArrDelay
FROM dbo.flightss
GROUP BY UniqueCarrier
ORDER BY AvgDepDelay, AvgArrDelay DESC;


USE airline;

CREATE TABLE delay_causes_breakdown (
UniqueCarrier VARCHAR(20),
DepDelay FLOAT,
ArrDelay FLOAT
)


INSERT INTO delay_causes_breakdown (UniqueCarrier, DepDelay, ArrDelay)
SELECT UniqueCarrier,
       AVG(DepDelay) AS AvgDepDelay, 
       AVG(ArrDelay) AS AvgArrDelay
FROM dbo.flightss
GROUP BY UniqueCarrier
ORDER BY AvgDepDelay, AvgArrDelay DESC;

SELECT * FROM delay_causes_breakdown;
