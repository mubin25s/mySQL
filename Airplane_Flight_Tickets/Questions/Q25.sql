-- Question: Find the most popular destination (airport with most arrivals).
SELECT Destination_Code, COUNT(*) as Arrivals
FROM Flights
GROUP BY
    Destination_Code
ORDER BY Arrivals DESC
LIMIT 1;