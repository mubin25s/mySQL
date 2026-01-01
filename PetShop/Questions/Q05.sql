/*
5. Count how many pets belong to each category.
*/
SELECT Category_ID, COUNT(*) AS total_pets
FROM pets
GROUP BY
    Category_ID;