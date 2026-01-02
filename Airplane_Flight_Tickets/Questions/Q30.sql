-- Question: Count the number of flights for each status (On Time, Delayed, Cancelled).
SELECT Status, COUNT(*) FROM Flights GROUP BY Status;