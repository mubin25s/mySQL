/*
12. Find total orders placed by each customer.
*/
SELECT Customer_ID, COUNT(Order_ID) AS total_orders
FROM orders
GROUP BY
    Customer_ID;