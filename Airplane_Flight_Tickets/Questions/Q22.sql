-- Question: List airlines that operate more than 1 flight.
SELECT A.Airline_Name, COUNT(F.Flight_ID) as Flight_Count
FROM Airlines A
    JOIN Flights F ON A.Airline_ID = F.Airline_ID
GROUP BY
    A.Airline_Name
HAVING
    COUNT(F.Flight_ID) > 1;