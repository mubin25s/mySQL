/*
7. Find the oldest pet in the shop.
*/
SELECT Pet_name, MAX(Pet_age) AS oldest_age FROM pets;