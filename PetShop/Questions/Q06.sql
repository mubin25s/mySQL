<<<<<<< HEAD
/*
6. Show all cats and their vaccinations.
*/
SELECT p.Pet_name, v.Vaccine_name
FROM pets p
    JOIN vaccination v ON p.Pet_ID = v.Pet_ID
WHERE
=======
/*
6. Show all cats and their vaccinations.
*/
SELECT p.Pet_name, v.Vaccine_name
FROM pets p
    JOIN vaccination v ON p.Pet_ID = v.Pet_ID
WHERE
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    p.Category_ID = 102;