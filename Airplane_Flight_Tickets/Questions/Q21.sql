<<<<<<< HEAD
-- Question: Find airports that have no flights originating from them.
SELECT Airport_Name
FROM Airports
WHERE
    Airport_Code NOT IN(
        SELECT DISTINCT
            Origin_Code
        FROM Flights
=======
-- Question: Find airports that have no flights originating from them.
SELECT Airport_Name
FROM Airports
WHERE
    Airport_Code NOT IN(
        SELECT DISTINCT
            Origin_Code
        FROM Flights
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    );