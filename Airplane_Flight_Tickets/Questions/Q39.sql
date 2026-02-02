<<<<<<< HEAD
-- Question: Calculate the total number of seats booked for each flight.
SELECT F.Flight_Number, COUNT(T.Ticket_ID) as Booked_Seats
FROM Flights F
    LEFT JOIN Tickets T ON F.Flight_ID = T.Flight_ID
GROUP BY
=======
-- Question: Calculate the total number of seats booked for each flight.
SELECT F.Flight_Number, COUNT(T.Ticket_ID) as Booked_Seats
FROM Flights F
    LEFT JOIN Tickets T ON F.Flight_ID = T.Flight_ID
GROUP BY
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    F.Flight_Number;