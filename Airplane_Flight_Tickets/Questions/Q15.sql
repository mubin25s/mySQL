-- Question: List all tickets with their associated Flight Number.
SELECT T.Ticket_ID, F.Flight_Number, T.Price
FROM Tickets T
    JOIN Flights F ON T.Flight_ID = F.Flight_ID;