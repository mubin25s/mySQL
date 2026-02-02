<<<<<<< HEAD
/*
21. Display pets priced above the average pet price.
*/
SELECT Pet_name, Price
FROM pets
WHERE
    Price > (
        SELECT AVG(Price)
        FROM pets
=======
/*
21. Display pets priced above the average pet price.
*/
SELECT Pet_name, Price
FROM pets
WHERE
    Price > (
        SELECT AVG(Price)
        FROM pets
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    );