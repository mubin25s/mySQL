/*
21. Display pets priced above the average pet price.
*/
SELECT Pet_name, Price
FROM pets
WHERE
    Price > (
        SELECT AVG(Price)
        FROM pets
    );