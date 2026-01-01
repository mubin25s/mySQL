/*
23. Get the month-wise total sales.
*/
SELECT DATE_FORMAT(Order_date, '%Y-%m') AS month, SUM(Total_amount) AS monthly_sales
FROM orders
GROUP BY
    DATE_FORMAT(Order_date, '%Y-%m')
ORDER BY month;