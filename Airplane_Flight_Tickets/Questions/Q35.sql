-- Question: Count the number of tickets booked in each month of 2023.
SELECT MONTH(Booking_Date) as Month, COUNT(*) as Tickets_Sold
FROM Tickets
WHERE
    YEAR(Booking_Date) = 2023
GROUP BY
    MONTH(Booking_Date);