-- Question: Find the airline that operates the most flights.
SELECT A.Airline_Name, COUNT(F.Flight_ID) as Flight_Count
FROM Airlines A
    JOIN Flights F ON A.Airline_ID = F.Airline_ID
GROUP BY
    A.Airline_Name
ORDER BY Flight_Count DESC
LIMIT 1;