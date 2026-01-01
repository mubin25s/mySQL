/*
24. List all pet food with the pets they belong to
*/
SELECT pf.Food_name, p.Pet_name
FROM pets p
    RIGHT JOIN pet_food pf ON p.Pet_ID = pf.Pet_ID;