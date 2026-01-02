-- Question: Find all flights with a duration longer than 10 hours.
-- Assuming Departure_Time and Arrival_Time are DATETIME.
SELECT Flight_Number, TIMESTAMPDIFF(
        HOUR, Departure_Time, Arrival_Time
    ) as Duration_Hours
FROM Flights
WHERE
    TIMESTAMPDIFF(
        HOUR,
        Departure_Time,
        Arrival_Time
    ) > 10;