<<<<<<< HEAD
/*
22. Which customer placed the earliest order?
*/
SELECT c.C_nams, o.Order_date
FROM customer c
    JOIN orders o ON c.Customer_ID = o.Customer_ID
ORDER BY o.Order_date ASC
=======
/*
22. Which customer placed the earliest order?
*/
SELECT c.C_nams, o.Order_date
FROM customer c
    JOIN orders o ON c.Customer_ID = o.Customer_ID
ORDER BY o.Order_date ASC
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
LIMIT 1;