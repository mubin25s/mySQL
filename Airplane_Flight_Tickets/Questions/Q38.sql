-- Question: Find passengers who have booked flights on both 'Delta Air Lines' and 'British Airways'.
SELECT P.First_Name, P.Last_Name
FROM Passengers P
WHERE
    P.Passenger_ID IN (
        SELECT T.Passenger_ID
        FROM
            Tickets T
            JOIN Flights F ON T.Flight_ID = F.Flight_ID
            JOIN Airlines A ON F.Airline_ID = A.Airline_ID
        WHERE
            A.Airline_Name = 'Delta Air Lines'
    )
    AND P.Passenger_ID IN (
        SELECT T.Passenger_ID
        FROM
            Tickets T
            JOIN Flights F ON T.Flight_ID = F.Flight_ID
            JOIN Airlines A ON F.Airline_ID = A.Airline_ID
        WHERE
            A.Airline_Name = 'British Airways'
    );