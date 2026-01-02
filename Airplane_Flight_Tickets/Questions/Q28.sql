-- Question: List all flights arriving in 'New York'.
SELECT F.Flight_Number, A.City
FROM Flights F
    JOIN Airports A ON F.Destination_Code = A.Airport_Code
WHERE
    A.City = 'New York';