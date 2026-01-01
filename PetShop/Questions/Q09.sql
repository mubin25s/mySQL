/*
9. Find all pets supplied by supplier with ID 401
*/
SELECT p.Pet_name
FROM pets p
    JOIN pet_purchases pp ON p.Pet_ID = pp.Pet_ID
WHERE
    pp.Supplier_ID = 401;