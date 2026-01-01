/*
10. Which pets don’t have any vaccination records?
*/
SELECT p.Pet_name
FROM pets p
    LEFT JOIN immunization v ON p.Pet_ID = v.Pet_ID
WHERE
    v.Pet_ID IS NULL;