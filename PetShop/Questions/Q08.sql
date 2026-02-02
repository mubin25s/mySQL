<<<<<<< HEAD
/*
8. Add a new table injured pets.
*/
Create table Injured_pet (
    Injured_Pet_ID int,
    I_P_name varchar(100),
    I_P_age int,
    Vaccine_ID int,
    Foreign key (Vaccine_ID) references immunization (Vaccine_ID)
=======
/*
8. Add a new table injured pets.
*/
Create table Injured_pet (
    Injured_Pet_ID int,
    I_P_name varchar(100),
    I_P_age int,
    Vaccine_ID int,
    Foreign key (Vaccine_ID) references immunization (Vaccine_ID)
>>>>>>> 81f1d5bf3756aafdfcf71920ecbb08e385483870
);