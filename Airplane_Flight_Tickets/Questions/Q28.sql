<<<<<<< HEAD
-- Question: List all flights arriving in 'New York'.
SELECT F.Flight_Number, A.City
FROM Flights F
    JOIN Airports A ON F.Destination_Code = A.Airport_Code
WHERE
=======
-- Question: List all flights arriving in 'New York'.
SELECT F.Flight_Number, A.City
FROM Flights F
    JOIN Airports A ON F.Destination_Code = A.Airport_Code
WHERE
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    A.City = 'New York';