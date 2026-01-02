-- Question: Calculate the total number of seats booked for each flight.
SELECT F.Flight_Number, COUNT(T.Ticket_ID) as Booked_Seats
FROM Flights F
    LEFT JOIN Tickets T ON F.Flight_ID = T.Flight_ID
GROUP BY
    F.Flight_Number;