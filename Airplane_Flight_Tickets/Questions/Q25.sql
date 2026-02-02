<<<<<<< HEAD
-- Question: Find the most popular destination (airport with most arrivals).
SELECT Destination_Code, COUNT(*) as Arrivals
FROM Flights
GROUP BY
    Destination_Code
ORDER BY Arrivals DESC
=======
-- Question: Find the most popular destination (airport with most arrivals).
SELECT Destination_Code, COUNT(*) as Arrivals
FROM Flights
GROUP BY
    Destination_Code
ORDER BY Arrivals DESC
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
LIMIT 1;