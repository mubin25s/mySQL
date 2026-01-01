INSERT INTO
    customer (
        Customer_ID,
        C_nams,
        C_phone,
        C_email,
        C_address
    )
VALUES (
        301,
        'Arohi Ahona',
        '01710000001',
        'ahonaar22@gmail.com',
        'Gulshan, Dhaka'
    ),
    (
        302,
        'Fathum Mubin',
        '01710000002',
        'mfathum9022@gmail.com',
        'Savar'
    ),
    (
        303,
        'Habibur Rahman',
        '01710000003',
        'habrahman77@gmail.com',
        'Dhanmondi, Dhaka'
    ),
    (
        304,
        'Zannatul Maria',
        '01710000004',
        'zmaria103@gmail.com',
        'Mirpur, Dhaka'
    ),
    (
        305,
        'Aziz Efath',
        '01710000005',
        'azize33@gmail.com',
        'Uttara, Dhaka'
    ),
    (
        306,
        'Farida Zaman',
        '01710000006',
        'farizam43@gmail.com',
        'Mohammadpur'
    ),
    (
        307,
        'Joynto Ghosh',
        '01710000007',
        'jghosh884@gmail.com',
        'Tejgaon'
    ),
    (
        308,
        'Suchona Suchu',
        '01710000008',
        'suchu858@gmail.com',
        'Motijheel'
    ),
    (
        309,
        'Imran Hossain',
        '01710000009',
        'imranh55@gmail.com',
        'Azimpur'
    ),
    (
        310,
        'Walid Rahman',
        '01710000010',
        'wrahman91@gmail.com',
        'Shahbagh'
    ),
    (
        311,
        'Ashraful Haque',
        '01710000011',
        'ashhaque12@gmail.com',
        'uttora'
    ),
    (
        312,
        'Laila Aliza',
        '01710000012',
        'laliza909@gmail.com',
        'Tejgaon Industrial Area'
    ),
    (
        313,
        'Rawshon Ali',
        '01710000013',
        'rawali73@gmail.com',
        'Mirpur-10'
    ),
    (
        314,
        'Rabeya Sultana',
        '01710000014',
        'rsultana45@gmail.com',
        'Dhanmondi'
    ),
    (
        315,
        'Sumaiyea Faruk',
        '01710000015',
        'sumaiyea35@gmail.com',
        'Uttara Sector-6'
    ),
    (
        316,
        'Saifullah Tanvir',
        '01710000016',
        'stanvir22@gmail.com',
        'Banani Road-11'
    ),
    (
        317,
        'Arup Ratan',
        '01710000017',
        'aratrn58@gmail.com',
        'Gulshan-1'
    ),
    (
        318,
        'Sachcha Khandker',
        '01710000018',
        'skhandker29@gmail.com',
        'Motijheel Commercial Area'
    ),
    (
        319,
        'Arafat Sany',
        '01710000019',
        'asany882@gmail.com',
        'Mirpur-12'
    ),
    (
        320,
        'Tasnim Saba',
        '01710000020',
        'tsaba46@gmail.com',
        'Kajipara, Mirpur-10'
    );

INSERT INTO
    pet_categories (Category_ID, Category_name)
VALUES (101, 'Dog'),
    (102, 'Cat'),
    (103, 'Budgie'),
    (104, 'Fish'),
    (105, 'Rabbit'),
    (106, 'Parrot'),
    (107, 'Hamster'),
    (108, 'Turtle'),
    (109, 'Guinea Pig'),
    (110, 'Lizard'),
    (111, 'Snake'),
    (112, 'Ferret'),
    (113, 'Chinchilla'),
    (114, 'Gerbil'),
    (115, 'Mouse'),
    (116, 'Pigeon'),
    (117, 'Frog'),
    (118, 'Hedgehog'),
    (119, 'Hermit Crab'),
    (120, 'Iguana');

INSERT INTO
    pets (
        Pet_ID,
        Pet_name,
        Category_ID,
        Breed,
        Pet_age,
        Price,
        Stock,
        Arrival_date
    )
VALUES (
        001,
        'Buddy',
        101,
        'Labrador',
        3,
        5000,
        5,
        '01/07/2025'
    ),
    (
        002,
        'Mittens',
        102,
        'Persian',
        2,
        4500,
        4,
        '05/07/2025'
    ),
    (
        003,
        'Tweety',
        103,
        'Budgerigar',
        1,
        300,
        8,
        '10/07/2025'
    ),
    (
        004,
        'Nemo',
        104,
        'Clownfish',
        1,
        200,
        12,
        '12/07/2025'
    ),
    (
        005,
        'Thumper',
        105,
        'Angora',
        2,
        3500,
        6,
        '15/07/2025'
    ),
    (
        006,
        'Polly',
        106,
        'African Grey',
        4,
        5500,
        2,
        '18/07/2025'
    ),
    (
        007,
        'Hammy',
        107,
        'Syrian Hamster',
        1,
        800,
        10,
        '20/07/2025'
    ),
    (
        008,
        'Speedy',
        108,
        'Red-eared Slider',
        3,
        2500,
        3,
        '22/07/2025'
    ),
    (
        009,
        'Pipsqueak',
        109,
        'Cavy',
        1,
        900,
        7,
        '23/07/2025'
    ),
    (
        010,
        'Lizzy',
        110,
        'Bearded Dragon',
        2,
        4800,
        4,
        '24/07/2025'
    ),
    (
        011,
        'Slither',
        111,
        'Corn Snake',
        3,
        4000,
        2,
        '25/07/2025'
    ),
    (
        012,
        'Fuzzy',
        112,
        'Ferret',
        1,
        3200,
        5,
        '26/07/2025'
    ),
    (
        013,
        'Chinny',
        113,
        'Standard',
        2,
        3700,
        3,
        '27/07/2025'
    ),
    (
        014,
        'Jerry',
        114,
        'Gerbil',
        1,
        700,
        9,
        '28/07/2025'
    ),
    (
        015,
        'Mickey',
        115,
        'House Mouse',
        1,
        600,
        11,
        '29/07/2025'
    ),
    (
        016,
        'Sky',
        116,
        'Rock Pigeon',
        2,
        1200,
        6,
        '30/07/2025'
    ),
    (
        017,
        'Hoppy',
        117,
        'Tree Frog',
        1,
        1100,
        4,
        '31/07/2025'
    ),
    (
        018,
        'Spike',
        118,
        'Hedgehog',
        2,
        4300,
        3,
        '01/08/2025'
    ),
    (
        019,
        'Shelly',
        119,
        'Hermit Crab',
        1,
        950,
        5,
        '02/08/2025'
    ),
    (
        020,
        'Iggy',
        120,
        'Green Iguana',
        3,
        5200,
        2,
        '03/08/2025'
    );

INSERT INTO
    pet_food (
        Food_ID,
        Pet_ID,
        Food_name,
        Brand,
        Stock,
        Price
    )
VALUES (
        201,
        001,
        'Adult Dog Kibble',
        'HappyPup',
        20,
        800
    ),
    (
        202,
        001,
        'Puppy Wet Food',
        'PupJoy',
        15,
        900
    ),
    (
        203,
        002,
        'Premium Cat Food',
        'CatHeaven',
        18,
        850
    ),
    (
        204,
        002,
        'Cat Treats',
        'KittySnacks',
        25,
        300
    ),
    (
        205,
        003,
        'Budgie Seed Mix',
        'BirdFeedCo',
        30,
        200
    ),
    (
        206,
        003,
        'Pellet Food',
        'BudgieBest',
        20,
        220
    ),
    (
        207,
        005,
        'Rabbit Hay',
        'HappyRabbit',
        25,
        400
    ),
    (
        208,
        005,
        'Veggie Mix',
        'RabbitDelight',
        20,
        450
    ),
    (
        209,
        006,
        'Parrot Pellets',
        'ParrotPro',
        10,
        700
    ),
    (
        210,
        006,
        'Parrot Nuts',
        'FeatherTreats',
        12,
        750
    ),
    (
        211,
        007,
        'Hamster Pellets',
        'HamsterHome',
        30,
        150
    ),
    (
        212,
        007,
        'Sunflower Seeds',
        'SeedRich',
        28,
        180
    ),
    (
        213,
        004,
        'Fish Flakes',
        'AquaLife',
        40,
        120
    ),
    (
        214,
        004,
        'Freeze-dried Food',
        'FishFun',
        35,
        150
    ),
    (
        215,
        008,
        'Turtle Pellets',
        'TurtleTreat',
        15,
        350
    ),
    (
        216,
        008,
        'Calcium Blocks',
        'ShellCare',
        10,
        400
    ),
    (
        217,
        009,
        'Guinea Pig Pellets',
        'CavyCare',
        20,
        300
    ),
    (
        218,
        009,
        'Vitamin C Mix',
        'CavyBoost',
        18,
        320
    ),
    (
        219,
        010,
        'Reptile Diet',
        'LizardLife',
        12,
        650
    ),
    (
        220,
        010,
        'Insect Mix',
        'ReptileNutri',
        11,
        700
    );

INSERT INTO
    suppliers (
        Supplier_ID,
        S_name,
        S_contact,
        S_email,
        S_location
    )
VALUES (
        701,
        'DHA Pet Supplies',
        '01720000001',
        'dhapetsupplies@gmail.com',
        'Dhaka'
    ),
    (
        702,
        'Bangla Pets',
        '01720000002',
        'banglapets@gmail.com',
        'Chittagong'
    ),
    (
        703,
        'Urban Animal Co',
        '01720000003',
        'urbananimalco@gmail.com',
        'Dhaka'
    ),
    (
        704,
        'Garden Bird Feed',
        '01720000004',
        'gardenbirdfeed@gmail.com',
        'Sylhet'
    ),
    (
        705,
        'Fish World',
        '01720000005',
        'fishworldbd@gmail.com',
        'Dhaka'
    ),
    (
        706,
        'Rabbit Ranch',
        '01720000006',
        'rabbitranch@gmail.com',
        'Khulna'
    ),
    (
        707,
        'Parrot Palace',
        '01720000007',
        'parrotpalacebd@gmail.com',
        'Dhaka'
    ),
    (
        708,
        'Rodent Supplies',
        '01720000008',
        'rodentsupplies@gmail.com',
        'Dhaka'
    ),
    (
        709,
        'Reptile Depot',
        '01720000009',
        'reptiledepot@gmail.com',
        'Dhaka'
    ),
    (
        710,
        'Tiny Pets Ltd',
        '01720000010',
        'tinypetsltd@gmail.com',
        'Dhaka'
    ),
    (
        711,
        'Exotic Pets',
        '01720000011',
        'exoticpetsbd@gmail.com',
        'Rajshahi'
    ),
    (
        712,
        'Feathered Friends',
        '01720000012',
        'featheredfriends@gmail.com',
        'Dhaka'
    ),
    (
        713,
        'Scales & Fins',
        '01720000013',
        'scalesfins@gmail.com',
        'Dhaka'
    ),
    (
        714,
        'Small Mammals Inc',
        '01720000014',
        'smallmammalsinc@gmail.com',
        'Dhaka'
    ),
    (
        715,
        'Jungle Pets',
        '01720000015',
        'junglepets@gmail.com',
        'Bogura'
    ),
    (
        716,
        'Budgie Haven',
        '01720000016',
        'budgiehaven@gmail.com',
        'Sylhet'
    ),
    (
        717,
        'Hamster Home',
        '01720000017',
        'hamsterhome@gmail.com',
        'Dhaka'
    ),
    (
        718,
        'Reptile World',
        '01720000018',
        'reptileworldbd@gmail.com',
        'Chittagong'
    ),
    (
        719,
        'Puppet Parrots',
        '01720000019',
        'puppetparrots@gmail.com',
        'Dhaka'
    ),
    (
        720,
        'Fresh Fish Bazaar',
        '01720000020',
        'freshfishbazaar@gmail.com',
        'Dhaka'
    );

INSERT INTO
    pet_purchases (
        Purchase_ID,
        Pet_ID,
        Supplier_ID,
        Purchase_date,
        Quantity,
        Cost_price
    )
VALUES (
        801,
        001,
        701,
        '01/07/2025',
        3,
        4500
    ),
    (
        802,
        002,
        703,
        '05/07/2025',
        2,
        4300
    ),
    (
        803,
        003,
        716,
        '10/07/2025',
        5,
        250
    ),
    (
        804,
        004,
        705,
        '12/07/2025',
        6,
        180
    ),
    (
        805,
        005,
        706,
        '15/07/2025',
        4,
        3000
    ),
    (
        806,
        006,
        707,
        '18/07/2025',
        2,
        5000
    ),
    (
        807,
        007,
        717,
        '20/07/2025',
        6,
        700
    ),
    (
        808,
        008,
        709,
        '22/07/2025',
        3,
        2300
    ),
    (
        809,
        009,
        708,
        '23/07/2025',
        4,
        850
    ),
    (
        810,
        010,
        709,
        '24/07/2025',
        2,
        4500
    ),
    (
        811,
        011,
        709,
        '25/07/2025',
        1,
        3800
    ),
    (
        812,
        012,
        714,
        '26/07/2025',
        3,
        2800
    ),
    (
        813,
        013,
        712,
        '27/07/2025',
        2,
        3500
    ),
    (
        814,
        014,
        708,
        '28/07/2025',
        5,
        650
    ),
    (
        815,
        015,
        714,
        '29/07/2025',
        4,
        550
    ),
    (
        816,
        016,
        712,
        '30/07/2025',
        3,
        1100
    ),
    (
        817,
        017,
        713,
        '31/07/2025',
        4,
        1000
    ),
    (
        818,
        018,
        709,
        '01/08/2025',
        2,
        4000
    ),
    (
        819,
        019,
        713,
        '02/08/2025',
        3,
        900
    ),
    (
        820,
        020,
        709,
        '03/08/2025',
        2,
        4800
    );

INSERT INTO
    food_purchases (
        Food_purchase_ID,
        Food_ID,
        Category_ID,
        Supplier_ID,
        Purchase_date,
        Quantity,
        Cost_price
    )
VALUES (
        601,
        216,
        108,
        704,
        '01/08/2025',
        4,
        750
    ),
    (
        602,
        201,
        101,
        701,
        '02/08/2025',
        10,
        600
    ),
    (
        603,
        202,
        101,
        701,
        '03/08/2025',
        8,
        650
    ),
    (
        604,
        203,
        102,
        703,
        '04/08/2025',
        9,
        620
    ),
    (
        605,
        204,
        102,
        703,
        '05/08/2025',
        7,
        280
    ),
    (
        606,
        205,
        103,
        716,
        '06/08/2025',
        12,
        180
    ),
    (
        607,
        206,
        103,
        716,
        '07/08/2025',
        10,
        200
    ),
    (
        608,
        207,
        105,
        706,
        '08/08/2025',
        6,
        350
    ),
    (
        609,
        208,
        105,
        706,
        '09/08/2025',
        5,
        400
    ),
    (
        610,
        209,
        106,
        707,
        '10/08/2025',
        4,
        650
    ),
    (
        611,
        210,
        106,
        707,
        '11/08/2025',
        3,
        720
    ),
    (
        612,
        211,
        107,
        717,
        '12/08/2025',
        14,
        120
    ),
    (
        613,
        212,
        107,
        717,
        '13/08/2025',
        10,
        150
    ),
    (
        614,
        213,
        104,
        705,
        '14/08/2025',
        20,
        100
    ),
    (
        615,
        214,
        104,
        705,
        '15/08/2025',
        18,
        130
    ),
    (
        616,
        215,
        108,
        709,
        '16/08/2025',
        8,
        300
    ),
    (
        617,
        216,
        108,
        709,
        '17/08/2025',
        6,
        350
    ),
    (
        618,
        217,
        109,
        708,
        '18/08/2025',
        7,
        280
    ),
    (
        619,
        218,
        109,
        708,
        '19/08/2025',
        6,
        300
    ),
    (
        620,
        219,
        110,
        709,
        '20/08/2025',
        4,
        600
    );

INSERT INTO
    orders (
        Order_ID,
        Customer_ID,
        Order_date,
        Total_amount
    )
VALUES (401, 301, '02/07/2025', 8500),
    (402, 305, '05/07/2025', 9000),
    (403, 308, '10/07/2025', 2200),
    (404, 302, '12/07/2025', 3500),
    (405, 307, '15/07/2025', 4500),
    (406, 310, '18/07/2025', 5500),
    (407, 304, '20/07/2025', 2400),
    (408, 311, '22/07/2025', 3000),
    (409, 312, '23/07/2025', 2800),
    (410, 313, '24/07/2025', 3800),
    (411, 314, '25/07/2025', 3200),
    (412, 315, '26/07/2025', 4000),
    (413, 316, '27/07/2025', 700),
    (414, 317, '28/07/2025', 650),
    (415, 318, '29/07/2025', 1100),
    (416, 319, '30/07/2025', 4800),
    (417, 320, '31/07/2025', 1000),
    (418, 301, '01/08/2025', 900),
    (419, 306, '02/08/2025', 1500),
    (420, 309, '03/08/2025', 2400);

INSERT INTO
    order_details (
        Detail_ID,
        Order_ID,
        Pet_ID,
        Quantity,
        Price
    )
VALUES (501, 401, 001, 1, 5000),
    (502, 402, 006, 1, 5500),
    (503, 403, 003, 2, 600),
    (504, 404, 005, 1, 3500),
    (505, 405, 002, 1, 4500),
    (506, 406, 006, 1, 5500),
    (507, 407, 004, 2, 400),
    (508, 408, 007, 3, 2400),
    (509, 409, 009, 2, 1800),
    (510, 410, 010, 1, 4800),
    (511, 411, 012, 1, 3200),
    (512, 412, 013, 2, 7400),
    (513, 413, 014, 1, 700),
    (514, 414, 015, 2, 1200),
    (515, 415, 017, 1, 1100),
    (516, 416, 020, 1, 5200),
    (517, 417, 008, 1, 2500),
    (518, 418, 003, 3, 900),
    (519, 419, 007, 2, 1600),
    (520, 420, 002, 1, 4500);

INSERT INTO
    vaccination (
        Vaccine_ID,
        Pet_ID,
        Vaccine_name,
        Date_given,
        Next_dose
    )
VALUES (
        901,
        001,
        'Rabies',
        '02/07/2025',
        '02/08/2025'
    ),
    (
        902,
        002,
        'Feline Distemper',
        '06/07/2025',
        '06/08/2025'
    ),
    (
        903,
        003,
        'Avian Viral Disease',
        '11/07/2025',
        '11/08/2025'
    ),
    (
        904,
        005,
        'Myxomatosis',
        '16/07/2025',
        '16/08/2025'
    ),
    (
        905,
        006,
        'Psittacosis',
        '19/07/2025',
        '19/08/2025'
    ),
    (
        906,
        007,
        'Hamster Parvovirus',
        '21/07/2025',
        '21/08/2025'
    ),
    (
        907,
        008,
        'Shell Rot Prevention',
        '23/07/2025',
        '23/08/2025'
    ),
    (
        908,
        009,
        'Guinea Pig Vitamin C Booster',
        '24/07/2025',
        '24/08/2025'
    ),
    (
        909,
        010,
        'Reptile Salmonella Check',
        '25/07/2025',
        '25/08/2025'
    ),
    (
        910,
        011,
        'Snake Respiratory vaccine',
        '26/07/2025',
        '26/08/2025'
    ),
    (
        911,
        012,
        'Aleutian Disease',
        '27/07/2025',
        '27/08/2025'
    ),
    (
        912,
        013,
        'Chinchilla Distemper',
        '28/07/2025',
        '28/08/2025'
    ),
    (
        913,
        014,
        'Gerbil Viral Vaccine',
        '29/07/2025',
        '29/08/2025'
    ),
    (
        914,
        015,
        'Mouse Typhus',
        '30/07/2025',
        '30/08/2025'
    ),
    (
        915,
        016,
        'Pigeon Paramyxovirus',
        '31/07/2025',
        '31/08/2025'
    ),
    (
        916,
        017,
        'Frog Bacterial Control',
        '01/08/2025',
        '01/09/2025'
    ),
    (
        917,
        018,
        'Hedgehog Ringworm Check',
        '02/08/2025',
        '02/09/2025'
    ),
    (
        918,
        019,
        'Crab Shell Health',
        '03/08/2025',
        '03/09/2025'
    ),
    (
        919,
        020,
        'Iguana Nutritional Health',
        '04/08/2025',
        '04/09/2025'
    ),
    (
        920,
        004,
        'Fish Parasite Treatment',
        '13/07/2025',
        '13/08/2025'
    );