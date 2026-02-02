<<<<<<< HEAD
/*
9. Find all pets supplied by supplier with ID 401
*/
SELECT p.Pet_name
FROM pets p
    JOIN pet_purchases pp ON p.Pet_ID = pp.Pet_ID
WHERE
=======
/*
9. Find all pets supplied by supplier with ID 401
*/
SELECT p.Pet_name
FROM pets p
    JOIN pet_purchases pp ON p.Pet_ID = pp.Pet_ID
WHERE
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    pp.Supplier_ID = 401;