<<<<<<< HEAD
-- Question: List all flights with the name of the airline.
SELECT F.Flight_Number, A.Airline_Name
FROM Flights F
=======
-- Question: List all flights with the name of the airline.
SELECT F.Flight_Number, A.Airline_Name
FROM Flights F
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    JOIN Airlines A ON F.Airline_ID = A.Airline_ID;