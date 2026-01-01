/*
16. Which customers placed orders worth more than 4000 total?
*/
SELECT c.C_nams, SUM(o.Total_amount) AS total_spent
FROM customer c
    JOIN orders o ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.C_nams
HAVING
    SUM(o.Total_amount) > 4000;