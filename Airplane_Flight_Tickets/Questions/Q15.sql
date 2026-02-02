<<<<<<< HEAD
-- Question: List all tickets with their associated Flight Number.
SELECT T.Ticket_ID, F.Flight_Number, T.Price
FROM Tickets T
=======
-- Question: List all tickets with their associated Flight Number.
SELECT T.Ticket_ID, F.Flight_Number, T.Price
FROM Tickets T
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    JOIN Flights F ON T.Flight_ID = F.Flight_ID;