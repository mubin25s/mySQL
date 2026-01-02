-- Question: Find passengers who have not booked any tickets.
SELECT First_Name, Last_Name
FROM Passengers
WHERE
    Passenger_ID NOT IN(
        SELECT DISTINCT
            Passenger_ID
        FROM Tickets
    );