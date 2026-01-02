-- Question: List the names of passengers who have booked 'Business' class tickets.
SELECT P.First_Name, P.Last_Name
FROM Passengers P
    JOIN Tickets T ON P.Passenger_ID = T.Passenger_ID
WHERE
    T.Seat_Class = 'Business';