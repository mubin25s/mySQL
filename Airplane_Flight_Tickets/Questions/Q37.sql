-- Question: List all flights that have not been cancelled.
SELECT * FROM Flights WHERE Status != 'Cancelled';