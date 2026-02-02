<<<<<<< HEAD
-- Question: Find passengers who have not booked any tickets.
SELECT First_Name, Last_Name
FROM Passengers
WHERE
    Passenger_ID NOT IN(
        SELECT DISTINCT
            Passenger_ID
        FROM Tickets
=======
-- Question: Find passengers who have not booked any tickets.
SELECT First_Name, Last_Name
FROM Passengers
WHERE
    Passenger_ID NOT IN(
        SELECT DISTINCT
            Passenger_ID
        FROM Tickets
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    );