<<<<<<< HEAD
-- Question: Count the number of flights for each status (On Time, Delayed, Cancelled).
=======
-- Question: Count the number of flights for each status (On Time, Delayed, Cancelled).
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
SELECT Status, COUNT(*) FROM Flights GROUP BY Status;