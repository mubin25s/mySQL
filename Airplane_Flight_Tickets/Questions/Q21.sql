-- Question: Find airports that have no flights originating from them.
SELECT Airport_Name
FROM Airports
WHERE
    Airport_Code NOT IN(
        SELECT DISTINCT
            Origin_Code
        FROM Flights
    );