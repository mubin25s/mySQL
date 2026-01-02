-- Question: Find the average price of 'Economy' class tickets for each airline.
SELECT A.Airline_Name, AVG(T.Price) as Avg_Economy_Price
FROM
    Airlines A
    JOIN Flights F ON A.Airline_ID = F.Airline_ID
    JOIN Tickets T ON F.Flight_ID = T.Flight_ID
WHERE
    T.Seat_Class = 'Economy'
GROUP BY
    A.Airline_Name;