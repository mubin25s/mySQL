<<<<<<< HEAD
/*
23. Get the month-wise total sales.
*/
SELECT DATE_FORMAT(Order_date, '%Y-%m') AS month, SUM(Total_amount) AS monthly_sales
FROM orders
GROUP BY
    DATE_FORMAT(Order_date, '%Y-%m')
=======
/*
23. Get the month-wise total sales.
*/
SELECT DATE_FORMAT(Order_date, '%Y-%m') AS month, SUM(Total_amount) AS monthly_sales
FROM orders
GROUP BY
    DATE_FORMAT(Order_date, '%Y-%m')
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
ORDER BY month;