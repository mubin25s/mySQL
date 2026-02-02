<<<<<<< HEAD
-- Question: Find the passenger who paid the most for a single ticket.
SELECT P.First_Name, P.Last_Name, T.Price
FROM Passengers P
    JOIN Tickets T ON P.Passenger_ID = T.Passenger_ID
ORDER BY T.Price DESC
=======
-- Question: Find the passenger who paid the most for a single ticket.
SELECT P.First_Name, P.Last_Name, T.Price
FROM Passengers P
    JOIN Tickets T ON P.Passenger_ID = T.Passenger_ID
ORDER BY T.Price DESC
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
LIMIT 1;