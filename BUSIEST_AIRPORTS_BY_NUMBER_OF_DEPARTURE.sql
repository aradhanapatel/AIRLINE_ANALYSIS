--BUSIEST_AIRPORTS_BY_NUMBER_OF_DEPARTURE

SELECT Origin, COUNT(*) AS TotalDepartures
FROM dbo.flightss
GROUP BY Origin
ORDER BY TotalDepartures DESC;


USE airline;
CREATE TABLE busiest_airport_by_number_of_departure (
Origin VARCHAR(20),
TotalDepartures INT
);

INSERT INTO busiest_airport_by_number_of_departure (Origin, TotalDepartures)
SELECT Origin, COUNT(*) AS TotalDepartures
FROM dbo.flightss
GROUP BY Origin
ORDER BY TotalDepartures DESC;

SELECT * FROM  busiest_airport_by_number_of_departure;
















