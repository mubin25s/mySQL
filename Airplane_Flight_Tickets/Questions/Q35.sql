<<<<<<< HEAD
-- Question: Count the number of tickets booked in each month of 2023.
SELECT MONTH(Booking_Date) as Month, COUNT(*) as Tickets_Sold
FROM Tickets
WHERE
    YEAR(Booking_Date) = 2023
GROUP BY
=======
-- Question: Count the number of tickets booked in each month of 2023.
SELECT MONTH(Booking_Date) as Month, COUNT(*) as Tickets_Sold
FROM Tickets
WHERE
    YEAR(Booking_Date) = 2023
GROUP BY
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    MONTH(Booking_Date);