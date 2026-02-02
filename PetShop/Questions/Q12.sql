<<<<<<< HEAD
/*
12. Find total orders placed by each customer.
*/
SELECT Customer_ID, COUNT(Order_ID) AS total_orders
FROM orders
GROUP BY
=======
/*
12. Find total orders placed by each customer.
*/
SELECT Customer_ID, COUNT(Order_ID) AS total_orders
FROM orders
GROUP BY
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    Customer_ID;