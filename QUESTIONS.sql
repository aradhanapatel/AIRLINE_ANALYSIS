SELECT Origin, 
       COUNT(*) AS TotalDepartures, 
       AVG(TaxiOut) AS AvgTaxiOutTime
FROM dbo.flightss
GROUP BY Origin
ORDER BY AvgTaxiOutTime DESC, TotalDepartures DESC;

SELECT Dest, 
       COUNT(*) AS TotalArrivals, 
       AVG(TaxiIn) AS AvgTaxiInTime
FROM dbo.flightss
GROUP BY Dest
ORDER BY AvgTaxiInTime DESC, TotalArrivals DESC;

SELECT 
    CASE 
        WHEN CancellationCode = 'A' THEN 'Carrier Delay'
        WHEN CancellationCode = 'B' THEN 'Weather Delay'
        WHEN CancellationCode = 'C' THEN 'NAS (National Air System) Delay'
        WHEN CancellationCode = 'D' THEN 'Security Delay'
        ELSE 'Other Delays'
    END AS DelayCause,
    COUNT(*) AS TotalDelays
FROM dbo.flightss
WHERE ArrDelay > 0 OR DepDelay > 0
GROUP BY CancellationCode
ORDER BY TotalDelays DESC;

