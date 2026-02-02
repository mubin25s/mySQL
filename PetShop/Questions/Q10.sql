<<<<<<< HEAD
/*
10. Which pets don’t have any vaccination records?
*/
SELECT p.Pet_name
FROM pets p
    LEFT JOIN immunization v ON p.Pet_ID = v.Pet_ID
WHERE
=======
/*
10. Which pets don’t have any vaccination records?
*/
SELECT p.Pet_name
FROM pets p
    LEFT JOIN immunization v ON p.Pet_ID = v.Pet_ID
WHERE
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    v.Pet_ID IS NULL;