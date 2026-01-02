-- Question: Find the passenger who paid the most for a single ticket.
SELECT P.First_Name, P.Last_Name, T.Price
FROM Passengers P
    JOIN Tickets T ON P.Passenger_ID = T.Passenger_ID
ORDER BY T.Price DESC
LIMIT 1;