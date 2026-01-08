-- Insert values for Pet Shelter Database

-- 1. Shelters (20 rows)
INSERT INTO
    shelters (
        shelter_id,
        name,
        location,
        contact_number,
        email
    )
VALUES (
        1,
        'Happy Paws Shelter',
        'New York, NY',
        '555-0101',
        'info@happypaws.org'
    ),
    (
        2,
        'Safe Haven Rescue',
        'Los Angeles, CA',
        '555-0102',
        'contact@safehaven.org'
    ),
    (
        3,
        'Furry Friends Home',
        'Chicago, IL',
        '555-0103',
        'help@furryfriends.org'
    ),
    (
        4,
        'Litte Tails Shelter',
        'Houston, TX',
        '555-0104',
        'tails@littletails.org'
    ),
    (
        5,
        'Guardian Angel Pets',
        'Phoenix, AZ',
        '555-0105',
        'admin@guardianangel.org'
    ),
    (
        6,
        'Rescue Me Center',
        'Philadelphia, PA',
        '555-0106',
        'rescuer@rescueme.org'
    ),
    (
        7,
        'Pets Paradise',
        'San Antonio, TX',
        '555-0107',
        'welcome@petsparadise.org'
    ),
    (
        8,
        'Kindness Animal Shelter',
        'San Diego, CA',
        '555-0108',
        'kindness@animalshelter.org'
    ),
    (
        9,
        'Second Chance Paws',
        'Dallas, TX',
        '555-0109',
        'hello@secondchance.org'
    ),
    (
        10,
        'Compassion Animal Rescue',
        'San Jose, CA',
        '555-0110',
        'support@compassion.org'
    ),
    (
        11,
        'Hopeful Hearts Shelter',
        'Austin, TX',
        '555-0111',
        'hope@hopefulhearts.org'
    ),
    (
        12,
        'Bark & Meow Haven',
        'Jacksonville, FL',
        '555-0112',
        'haven@barkmeow.org'
    ),
    (
        13,
        'Loving Arms Rescue',
        'Fort Worth, TX',
        '555-0113',
        'love@lovingarms.org'
    ),
    (
        14,
        'Eternal Friend Shelter',
        'Columbus, OH',
        '555-0114',
        'friends@eternalfriends.org'
    ),
    (
        15,
        'Pacific Paws Rescue',
        'San Francisco, CA',
        '555-0115',
        'paws@pacificpaws.org'
    ),
    (
        16,
        'Mile High Pets',
        'Denver, CO',
        '555-0116',
        'info@milehighpets.org'
    ),
    (
        17,
        'Windy City Animal Home',
        'Chicago, IL',
        '555-0117',
        'windy@animalhome.org'
    ),
    (
        18,
        'Sunshine Animal Shelter',
        'Miami, FL',
        '555-0118',
        'sun@sunshineshelter.org'
    ),
    (
        19,
        'Emerald City Pet Rescue',
        'Seattle, WA',
        '555-0119',
        'emerald@petrescue.org'
    ),
    (
        20,
        'Big Apple Animal Center',
        'New York, NY',
        '555-0120',
        'bigapple@animalcenter.org'
    );

-- 2. Staff (20 rows)
INSERT INTO
    staff (
        staff_id,
        shelter_id,
        first_name,
        last_name,
        role,
        email
    )
VALUES (
        1,
        1,
        'John',
        'Doe',
        'Manager',
        'john.doe@happypaws.org'
    ),
    (
        2,
        1,
        'Jane',
        'Smith',
        'Vet',
        'jane.smith@happypaws.org'
    ),
    (
        3,
        2,
        'Robert',
        'Brown',
        'Manager',
        'robert.brown@safehaven.org'
    ),
    (
        4,
        2,
        'Emily',
        'Davis',
        'Volunteer',
        'emily.davis@safehaven.org'
    ),
    (
        5,
        3,
        'Michael',
        'Wilson',
        'Manager',
        'michael.wilson@furryfriends.org'
    ),
    (
        6,
        4,
        'Sarah',
        'Miller',
        'Vet',
        'sarah.miller@littletails.org'
    ),
    (
        7,
        5,
        'William',
        'Moore',
        'Manager',
        'william.moore@guardianangel.org'
    ),
    (
        8,
        6,
        'Linda',
        'Taylor',
        'Volunteer',
        'linda.taylor@rescueme.org'
    ),
    (
        9,
        7,
        'David',
        'Anderson',
        'Manager',
        'david.anderson@petsparadise.org'
    ),
    (
        10,
        8,
        'Elizabeth',
        'Thomas',
        'Vet',
        'elizabeth.thomas@animalshelter.org'
    ),
    (
        11,
        9,
        'James',
        'Jackson',
        'Manager',
        'james.jackson@secondchance.org'
    ),
    (
        12,
        10,
        'Jennifer',
        'White',
        'Volunteer',
        'jennifer.white@compassion.org'
    ),
    (
        13,
        11,
        'Chris',
        'Harris',
        'Manager',
        'chris.harris@hopefulhearts.org'
    ),
    (
        14,
        12,
        'Amanda',
        'Martin',
        'Vet',
        'amanda.martin@barkmeow.org'
    ),
    (
        15,
        13,
        'Thomas',
        'Thompson',
        'Manager',
        'thomas.thompson@lovingarms.org'
    ),
    (
        16,
        14,
        'Jessica',
        'Garcia',
        'Volunteer',
        'jessica.garcia@eternalfriends.org'
    ),
    (
        17,
        15,
        'Daniel',
        'Martinez',
        'Manager',
        'daniel.martinez@pacificpaws.org'
    ),
    (
        18,
        16,
        'Karen',
        'Robinson',
        'Vet',
        'karen.robinson@milehighpets.org'
    ),
    (
        19,
        17,
        'Matthew',
        'Clark',
        'Manager',
        'matthew.clark@animalhome.org'
    ),
    (
        20,
        18,
        'Lisa',
        'Rodriguez',
        'Volunteer',
        'lisa.rodriguez@sunshineshelter.org'
    );

-- 3. Pets (20 rows)
INSERT INTO
    pets (
        pet_id,
        shelter_id,
        name,
        species,
        breed,
        age,
        gender,
        adoption_status,
        arrival_date
    )
VALUES (
        1,
        1,
        'Buddy',
        'Dog',
        'Golden Retriever',
        3,
        'Male',
        'Available',
        '2025-10-01'
    ),
    (
        2,
        1,
        'Mittens',
        'Cat',
        'Tabby',
        2,
        'Female',
        'Available',
        '2025-11-15'
    ),
    (
        3,
        2,
        'Charlie',
        'Dog',
        'Beagle',
        5,
        'Male',
        'Adopted',
        '2025-05-20'
    ),
    (
        4,
        3,
        'Bella',
        'Dog',
        'Poodle',
        1,
        'Female',
        'Available',
        '2025-12-10'
    ),
    (
        5,
        4,
        'Max',
        'Dog',
        'Labrador',
        4,
        'Male',
        'Available',
        '2025-09-05'
    ),
    (
        6,
        5,
        'Luna',
        'Cat',
        'Siamese',
        3,
        'Female',
        'Available',
        '2025-08-22'
    ),
    (
        7,
        6,
        'Rocky',
        'Dog',
        'Boxer',
        6,
        'Male',
        'Adopted',
        '2025-03-12'
    ),
    (
        8,
        7,
        'Daisy',
        'Cat',
        'Maine Coon',
        2,
        'Female',
        'Available',
        '2025-07-30'
    ),
    (
        9,
        8,
        'Cooper',
        'Dog',
        'German Shepherd',
        2,
        'Male',
        'Available',
        '2025-11-05'
    ),
    (
        10,
        9,
        'Lucy',
        'Cat',
        'Persian',
        4,
        'Female',
        'Available',
        '2025-01-18'
    ),
    (
        11,
        10,
        'Bailey',
        'Dog',
        'Bulldog',
        3,
        'Male',
        'Available',
        '2025-06-25'
    ),
    (
        12,
        11,
        'Sadie',
        'Dog',
        'Chihuahua',
        7,
        'Female',
        'Adopted',
        '2025-02-14'
    ),
    (
        13,
        12,
        'Oliver',
        'Cat',
        'British Shorthair',
        1,
        'Male',
        'Available',
        '2025-10-30'
    ),
    (
        14,
        13,
        'Molly',
        'Dog',
        'Yorkshire Terrier',
        2,
        'Female',
        'Available',
        '2025-04-05'
    ),
    (
        15,
        14,
        'Tucker',
        'Dog',
        'Dachshund',
        5,
        'Male',
        'Available',
        '2025-09-12'
    ),
    (
        16,
        15,
        'Chloe',
        'Cat',
        'Ragdoll',
        3,
        'Female',
        'Adopted',
        '2024-12-25'
    ),
    (
        17,
        16,
        'Bear',
        'Dog',
        'Rottweiler',
        4,
        'Male',
        'Available',
        '2025-08-01'
    ),
    (
        18,
        17,
        'Penny',
        'Dog',
        'Cocker Spaniel',
        6,
        'Female',
        'Available',
        '2025-05-15'
    ),
    (
        19,
        18,
        'Jack',
        'Dog',
        'Siberian Husky',
        2,
        'Male',
        'Available',
        '2025-11-20'
    ),
    (
        20,
        19,
        'Sophie',
        'Cat',
        'Bengal',
        2,
        'Female',
        'Available',
        '2025-03-22'
    );

-- 4. Medical Records (20 rows)
INSERT INTO
    medical_records (
        record_id,
        pet_id,
        checkup_date,
        diagnosis,
        treatment,
        vet_name
    )
VALUES (
        1,
        1,
        '2025-10-05',
        'Healthy',
        'Vaccination',
        'Dr. Smith'
    ),
    (
        2,
        2,
        '2025-11-20',
        'Ear Infection',
        'Antibiotics',
        'Dr. Smith'
    ),
    (
        3,
        3,
        '2025-05-25',
        'Minor Cut',
        'Wound Cleaning',
        'Dr. Davis'
    ),
    (
        4,
        4,
        '2025-12-15',
        'Healthy',
        'Deworming',
        'Dr. Miller'
    ),
    (
        5,
        5,
        '2025-09-10',
        'Hip Dysplasia',
        'Pain Management',
        'Dr. Miller'
    ),
    (
        6,
        6,
        '2025-08-25',
        'Healthy',
        'Vaccination',
        'Dr. Thomas'
    ),
    (
        7,
        7,
        '2025-03-15',
        'Arthritis',
        'Joint Supplements',
        'Dr. Taylor'
    ),
    (
        8,
        8,
        '2025-08-05',
        'Respiratory Infection',
        'Inhaler',
        'Dr. Thomas'
    ),
    (
        9,
        9,
        '2025-11-10',
        'Healthy',
        'Vaccination',
        'Dr. Thomas'
    ),
    (
        10,
        10,
        '2025-01-25',
        'Dental Plaque',
        'Cleaning',
        'Dr. White'
    ),
    (
        11,
        11,
        '2025-07-01',
        'Healthy',
        'Deworming',
        'Dr. White'
    ),
    (
        12,
        12,
        '2025-02-20',
        'Eye Irritation',
        'Eye Drops',
        'Dr. Martin'
    ),
    (
        13,
        13,
        '2025-11-05',
        'Healthy',
        'Vaccination',
        'Dr. Martin'
    ),
    (
        14,
        14,
        '2025-04-10',
        'Skin Allergy',
        'Antihistamines',
        'Dr. Thompson'
    ),
    (
        15,
        15,
        '2025-09-18',
        'Healthy',
        'Vaccination',
        'Dr. Garcia'
    ),
    (
        16,
        16,
        '2025-01-05',
        'Anemia',
        'Iron Supplements',
        'Dr. Martinez'
    ),
    (
        17,
        17,
        '2025-08-05',
        'Healthy',
        'Deworming',
        'Dr. Robinson'
    ),
    (
        18,
        18,
        '2025-05-20',
        'Limping',
        'Rest and X-ray',
        'Dr. Clark'
    ),
    (
        19,
        19,
        '2025-11-25',
        'Healthy',
        'Vaccination',
        'Dr. Clark'
    ),
    (
        20,
        20,
        '2025-03-25',
        'Flea Outbreak',
        'Flea Treatment',
        'Dr. Rodriguez'
    );

-- 5. Adopters (20 rows)
INSERT INTO
    adopters (
        adopter_id,
        first_name,
        last_name,
        phone,
        email,
        address
    )
VALUES (
        1,
        'Alice',
        'Johnson',
        '555-1001',
        'alice@email.com',
        '123 Pine St, NY'
    ),
    (
        2,
        'Bob',
        'Williams',
        '555-1002',
        'bob@email.com',
        '456 Oak St, LA'
    ),
    (
        3,
        'Charlie',
        'Brown',
        '555-1003',
        'charlie@email.com',
        '789 Maple St, CHI'
    ),
    (
        4,
        'Diana',
        'Prince',
        '555-1004',
        'diana@email.com',
        '101 Wonder St, HOU'
    ),
    (
        5,
        'Edward',
        'Norton',
        '555-1005',
        'edward@email.com',
        '202 Fight Club Rd, PHX'
    ),
    (
        6,
        'Fiona',
        'Gallagher',
        '555-1006',
        'fiona@email.com',
        '303 Shameless Ave, PHI'
    ),
    (
        7,
        'George',
        'Clooney',
        '555-1007',
        'george@email.com',
        '404 Ocean Dr, SA'
    ),
    (
        8,
        'Hannah',
        'Montana',
        '555-1008',
        'hannah@email.com',
        '505 Popstar Way, SD'
    ),
    (
        9,
        'Ian',
        'Somerhalder',
        '555-1009',
        'ian@email.com',
        '606 Mystic Ln, DAL'
    ),
    (
        10,
        'Julia',
        'Roberts',
        '555-1010',
        'julia@email.com',
        '707 Pretty Rd, SJ'
    ),
    (
        11,
        'Kevin',
        'Hart',
        '555-1011',
        'kevin@email.com',
        '808 Funny St, AUS'
    ),
    (
        12,
        'Laura',
        'Croft',
        '555-1012',
        'laura@email.com',
        '909 Tomb Blvd, JAX'
    ),
    (
        13,
        'Michael',
        'Scott',
        '555-1013',
        'michael@email.com',
        '111 Dunder St, FW'
    ),
    (
        14,
        'Natalie',
        'Portman',
        '555-1014',
        'natalie@email.com',
        '222 Swan Lake, COL'
    ),
    (
        15,
        'Oscar',
        'Isaac',
        '555-1015',
        'oscar@email.com',
        '333 Star Way, SF'
    ),
    (
        16,
        'Penelope',
        'Cruz',
        '555-1016',
        'penelope@email.com',
        '444 Madrid St, DEN'
    ),
    (
        17,
        'Quincy',
        'Jones',
        '555-1017',
        'quincy@email.com',
        '555 Melody Dr, CHI'
    ),
    (
        18,
        'Rachel',
        'Green',
        '555-1018',
        'rachel@email.com',
        '666 Central Perk, MIA'
    ),
    (
        19,
        'Steven',
        'Spielberg',
        '555-1019',
        'steven@email.com',
        '777 Cinema St, SEA'
    ),
    (
        20,
        'Tony',
        'Stark',
        '555-1020',
        'tony@email.com',
        '888 Iron Man Dr, NY'
    );

-- 6. Adoptions (20 rows)
INSERT INTO
    adoptions (
        adoption_id,
        pet_id,
        adopter_id,
        staff_id,
        adoption_date,
        adoption_fee
    )
VALUES (
        1,
        3,
        1,
        3,
        '2025-06-01',
        150.00
    ),
    (
        2,
        7,
        2,
        8,
        '2025-04-15',
        200.00
    ),
    (
        3,
        12,
        3,
        13,
        '2025-03-01',
        100.00
    ),
    (
        4,
        16,
        4,
        17,
        '2025-01-10',
        120.00
    ),
    (
        5,
        1,
        5,
        1,
        '2025-10-15',
        250.00
    ),
    (
        6,
        2,
        6,
        2,
        '2025-12-01',
        80.00
    ),
    (
        7,
        4,
        7,
        5,
        '2025-12-20',
        300.00
    ),
    (
        8,
        5,
        8,
        6,
        '2025-10-01',
        180.00
    ),
    (
        9,
        6,
        9,
        4,
        '2025-09-01',
        90.00
    ),
    (
        10,
        8,
        10,
        9,
        '2025-08-15',
        110.00
    ),
    (
        11,
        9,
        11,
        10,
        '2025-12-05',
        220.00
    ),
    (
        12,
        10,
        12,
        11,
        '2025-02-01',
        75.00
    ),
    (
        13,
        11,
        13,
        12,
        '2025-07-20',
        130.00
    ),
    (
        14,
        13,
        14,
        14,
        '2025-11-15',
        85.00
    ),
    (
        15,
        14,
        15,
        15,
        '2025-05-01',
        160.00
    ),
    (
        16,
        15,
        16,
        16,
        '2025-10-10',
        140.00
    ),
    (
        17,
        17,
        17,
        18,
        '2025-09-01',
        210.00
    ),
    (
        18,
        18,
        18,
        19,
        '2025-06-15',
        170.00
    ),
    (
        19,
        19,
        19,
        20,
        '2025-12-01',
        190.00
    ),
    (
        20,
        20,
        20,
        1,
        '2025-04-01',
        95.00
    );

-- 7. Donations (20 rows)
INSERT INTO
    donations (
        donation_id,
        shelter_id,
        donor_name,
        amount,
        donation_date,
        donation_type
    )
VALUES (
        1,
        1,
        'Anonymous',
        500.00,
        '2025-11-01',
        'Cash'
    ),
    (
        2,
        2,
        'Pet Lovers Corp',
        1000.00,
        '2025-10-15',
        'Check'
    ),
    (
        3,
        3,
        'John Smith',
        50.00,
        '2025-12-01',
        'Online'
    ),
    (
        4,
        4,
        'Happy Tails Foundation',
        2500.00,
        '2025-09-20',
        'Grant'
    ),
    (
        5,
        5,
        'Sara Berry',
        100.00,
        '2025-08-05',
        'Cash'
    ),
    (
        6,
        6,
        'Animal Welfare Assoc',
        1500.00,
        '2025-07-12',
        'Check'
    ),
    (
        7,
        7,
        'Mark Cuban',
        5000.00,
        '2025-06-30',
        'Online'
    ),
    (
        8,
        8,
        'Local Bakery',
        200.00,
        '2025-05-18',
        'Cash'
    ),
    (
        9,
        9,
        'Emma Watson',
        1200.00,
        '2025-04-22',
        'Check'
    ),
    (
        10,
        10,
        'Tech Solutions',
        3000.00,
        '2025-03-10',
        'Online'
    ),
    (
        11,
        11,
        'Helpful Hands',
        400.00,
        '2025-02-14',
        'Cash'
    ),
    (
        12,
        12,
        'Community Chest',
        600.00,
        '2025-01-05',
        'Check'
    ),
    (
        13,
        13,
        'Paul Rudd',
        800.00,
        '2024-12-25',
        'Online'
    ),
    (
        14,
        14,
        'Gift Registry',
        150.00,
        '2024-11-30',
        'Cash'
    ),
    (
        15,
        15,
        'Corporate Give',
        2200.00,
        '2024-10-10',
        'Check'
    ),
    (
        16,
        16,
        'Tom Hanks',
        500.00,
        '2024-09-03',
        'Online'
    ),
    (
        17,
        17,
        'PetCo Foundation',
        3500.00,
        '2024-08-20',
        'Grant'
    ),
    (
        18,
        18,
        'Kind Soul',
        75.00,
        '2024-07-01',
        'Cash'
    ),
    (
        19,
        19,
        'Wealthy Benefactor',
        10000.00,
        '2024-06-15',
        'Check'
    ),
    (
        20,
        20,
        'NYC Paws Group',
        1800.00,
        '2024-05-25',
        'Online'
    );