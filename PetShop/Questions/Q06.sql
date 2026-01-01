/*
6. Show all cats and their vaccinations.
*/
SELECT p.Pet_name, v.Vaccine_name
FROM pets p
    JOIN vaccination v ON p.Pet_ID = v.Pet_ID
WHERE
    p.Category_ID = 102;