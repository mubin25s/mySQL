<<<<<<< HEAD
/*
24. List all pet food with the pets they belong to
*/
SELECT pf.Food_name, p.Pet_name
FROM pets p
=======
/*
24. List all pet food with the pets they belong to
*/
SELECT pf.Food_name, p.Pet_name
FROM pets p
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
    RIGHT JOIN pet_food pf ON p.Pet_ID = pf.Pet_ID;