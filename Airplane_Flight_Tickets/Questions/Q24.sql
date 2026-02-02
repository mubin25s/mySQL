<<<<<<< HEAD
-- Question: List passengers who have booked tickets on 'Delta Air Lines'.
SELECT P.First_Name, P.Last_Name
FROM
    Passengers P
    JOIN Tickets T ON P.Passenger_ID = T.Passenger_ID
    JOIN Flights F ON T.Flight_ID = F.Flight_ID
    JOIN Airlines A ON F.Airline_ID = A.Airline_ID
WHERE
=======
-- Question: List passengers who have booked tickets on 'Delta Air Lines'.
SELECT P.First_Name, P.Last_Name
FROM
    Passengers P
    JOIN Tickets T ON P.Passenger_ID = T.Passenger_ID
    JOIN Flights F ON T.Flight_ID = F.Flight_ID
    JOIN Airlines A ON F.Airline_ID = A.Airline_ID
WHERE
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    A.Airline_Name = 'Delta Air Lines';