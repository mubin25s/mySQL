<<<<<<< HEAD
-- Question: List all unique airport codes used as either origin or destination.
SELECT Origin_Code
FROM Flights
UNION
SELECT Destination_Code
=======
-- Question: List all unique airport codes used as either origin or destination.
SELECT Origin_Code
FROM Flights
UNION
SELECT Destination_Code
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
FROM Flights;