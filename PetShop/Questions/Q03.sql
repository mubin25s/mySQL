/*
3. Show all parrots and their suppliers.
*/
SELECT p.Pet_name, s.S_name
FROM
    pets p
    JOIN pet_purchases pp ON p.Pet_ID = pp.Pet_ID
    JOIN suppliers s ON pp.Supplier_ID = s.Supplier_ID
WHERE
    p.Category_ID = 106;