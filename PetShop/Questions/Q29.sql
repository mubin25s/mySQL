/*
29. Find the customer name, order ID, and total amount for the highest-value order placed in the pet shop
*/
SELECT
    C_nams,
    (
        SELECT Order_ID
        FROM orders
        WHERE
            Customer_ID = c.Customer_ID
        ORDER BY Total_amount DESC
        LIMIT 1
    ) AS Highest_Order_ID,
    (
        SELECT MAX(Total_amount)
        FROM orders
        WHERE
            Customer_ID = c.Customer_ID
    ) AS Highest_Order_Amount
FROM customer c
WHERE
    Customer_ID = (
        SELECT Customer_ID
        FROM orders
        ORDER BY Total_amount DESC
        LIMIT 1
    );