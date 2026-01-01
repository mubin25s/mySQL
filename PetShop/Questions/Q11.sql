/*
11. Find the total number of pets available in each category.
*/
SELECT Category_ID, COUNT(*) AS total_pets
FROM pets
GROUP BY
    Category_ID;