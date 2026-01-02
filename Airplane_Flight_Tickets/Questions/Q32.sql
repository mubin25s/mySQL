-- Question: List the top 5 most expensive tickets with passenger names.
SELECT P.First_Name, P.Last_Name, T.Price
FROM Tickets T
    JOIN Passengers P ON T.Passenger_ID = P.Passenger_ID
ORDER BY T.Price DESC
LIMIT 5;