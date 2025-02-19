--TOTAL_NUMBER_OF_FLIGHTS_PER_AIRLINE_

SELECT UniqueCarrier, COUNT(*) AS TotalFlights
FROM dbo.flightss
GROUP BY UniqueCarrier
ORDER BY TotalFlights DESC;

USE airline;
CREATE TABLE  total_number_of_flights_per_airline (
UniqueCarrier VARCHAR(20),
TotalFlights INT
);

INSERT INTO total_number_of_flights_per_airline(UniqueCarrier, TotalFlights)
SELECT UniqueCarrier, COUNT(*) AS TotalFlights
FROM dbo.flightss
GROUP BY UniqueCarrier
ORDER BY TotalFlights DESC;

SELECT * FROM  total_number_of_flights_per_airline;