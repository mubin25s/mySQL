-- Question: List all flights with the name of the airline.
SELECT F.Flight_Number, A.Airline_Name
FROM Flights F
    JOIN Airlines A ON F.Airline_ID = A.Airline_ID;