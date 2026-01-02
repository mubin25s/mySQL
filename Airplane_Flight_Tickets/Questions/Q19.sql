-- Question: List all unique airport codes used as either origin or destination.
SELECT Origin_Code
FROM Flights
UNION
SELECT Destination_Code
FROM Flights;