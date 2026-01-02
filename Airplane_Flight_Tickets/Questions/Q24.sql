-- Question: List passengers who have booked tickets on 'Delta Air Lines'.
SELECT P.First_Name, P.Last_Name
FROM
    Passengers P
    JOIN Tickets T ON P.Passenger_ID = T.Passenger_ID
    JOIN Flights F ON T.Flight_ID = F.Flight_ID
    JOIN Airlines A ON F.Airline_ID = A.Airline_ID
WHERE
    A.Airline_Name = 'Delta Air Lines';