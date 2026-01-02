-- Question: Find the airport code and name for all airports in 'London'.
SELECT Airport_Code, Airport_Name
FROM Airports
WHERE
    City = 'London';