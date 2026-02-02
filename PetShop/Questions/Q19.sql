<<<<<<< HEAD
/*
19. Which orders contain parrots?
*/
SELECT DISTINCT
    o.Order_ID,
    c.C_nams
FROM
    orders o
    JOIN order_details od ON o.Order_ID = od.Order_ID
    JOIN pets p ON od.Pet_ID = p.Pet_ID
    JOIN customer c ON o.Customer_ID = c.Customer_ID
WHERE
=======
/*
19. Which orders contain parrots?
*/
SELECT DISTINCT
    o.Order_ID,
    c.C_nams
FROM
    orders o
    JOIN order_details od ON o.Order_ID = od.Order_ID
    JOIN pets p ON od.Pet_ID = p.Pet_ID
    JOIN customer c ON o.Customer_ID = c.Customer_ID
WHERE
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    p.Category_ID = 104;