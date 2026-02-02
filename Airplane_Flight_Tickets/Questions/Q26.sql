<<<<<<< HEAD
-- Question: Calculate the average ticket price for each seat class.
=======
-- Question: Calculate the average ticket price for each seat class.
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
SELECT Seat_Class, AVG(Price) FROM Tickets GROUP BY Seat_Class;