-- Question: Calculate the average ticket price for each seat class.
SELECT Seat_Class, AVG(Price) FROM Tickets GROUP BY Seat_Class;