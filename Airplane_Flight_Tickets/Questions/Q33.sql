-- Question: Find passengers who booked a ticket with a price higher than the overall average ticket price.
SELECT DISTINCT
    P.First_Name,
    P.Last_Name
FROM Passengers P
    JOIN Tickets T ON P.Passenger_ID = T.Passenger_ID
WHERE
    T.Price > (
        SELECT AVG(Price)
        FROM Tickets
    );