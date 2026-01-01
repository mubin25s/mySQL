/*
14. Show suppliers who supplied at least 2 different pets.
*/
SELECT s.S_name, COUNT(DISTINCT pp.Pet_ID) AS pet_count
FROM suppliers s
    JOIN pet_purchases pp ON s.Supplier_ID = pp.Supplier_ID
GROUP BY
    s.S_name
HAVING
    COUNT(DISTINCT pp.Pet_ID) >= 2;