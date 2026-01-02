-- 1. Airports Table

-- Insert Data: Airports

CREATE TABLE Airports (
    Airport_Code VARCHAR(3) PRIMARY KEY,
    Airport_Name VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100)
);

-- 2. Airlines Table
CREATE TABLE Airlines (
    Airline_ID INT PRIMARY KEY,
    Airline_Name VARCHAR(100),
    Headquarters VARCHAR(100)
);

-- 3. Passengers Table
CREATE TABLE Passengers (
    Passenger_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Passport_Number VARCHAR(20),
    Country VARCHAR(50)
);

-- 4. Flights Table
CREATE TABLE Flights (
    Flight_ID INT PRIMARY KEY,
    Airline_ID INT,
    Flight_Number VARCHAR(10),
    Origin_Code VARCHAR(3),
    Destination_Code VARCHAR(3),
    Departure_Time DATETIME,
    Arrival_Time DATETIME,
    Status VARCHAR(20),
    FOREIGN KEY (Airline_ID) REFERENCES Airlines (Airline_ID),
    FOREIGN KEY (Origin_Code) REFERENCES Airports (Airport_Code),
    FOREIGN KEY (Destination_Code) REFERENCES Airports (Airport_Code)
);

-- 5. Tickets Table
CREATE TABLE Tickets (
    Ticket_ID INT PRIMARY KEY,
    Flight_ID INT,
    Passenger_ID INT,
    Booking_Date DATE,
    Seat_Class VARCHAR(20), -- Economy, Business, First
    Price DECIMAL(10, 2),
    Seat_Number VARCHAR(5),
    FOREIGN KEY (Flight_ID) REFERENCES Flights (Flight_ID),
    FOREIGN KEY (Passenger_ID) REFERENCES Passengers (Passenger_ID)
);

INSERT INTO
    Airports (
        Airport_Code,
        Airport_Name,
        City,
        Country
    )
VALUES (
        'JFK',
        'John F. Kennedy International Airport',
        'New York',
        'USA'
    ),
    (
        'LHR',
        'Heathrow Airport',
        'London',
        'UK'
    ),
    (
        'DXB',
        'Dubai International Airport',
        'Dubai',
        'UAE'
    ),
    (
        'HND',
        'Haneda Airport',
        'Tokyo',
        'Japan'
    ),
    (
        'CDG',
        'Charles de Gaulle Airport',
        'Paris',
        'France'
    ),
    (
        'SIN',
        'Changi Airport',
        'Singapore',
        'Singapore'
    ),
    (
        'SYD',
        'Kingsford Smith Airport',
        'Sydney',
        'Australia'
    ),
    (
        'YYZ',
        'Toronto Pearson International Airport',
        'Toronto',
        'Canada'
    ),
    (
        'FRA',
        'Frankfurt Airport',
        'Frankfurt',
        'Germany'
    ),
    (
        'AMS',
        'Schiphol Airport',
        'Amsterdam',
        'Netherlands'
    );

-- Insert Data: Airlines
INSERT INTO
    Airlines (
        Airline_ID,
        Airline_Name,
        Headquarters
    )
VALUES (
        1,
        'Delta Air Lines',
        'Atlanta, USA'
    ),
    (
        2,
        'British Airways',
        'London, UK'
    ),
    (3, 'Emirates', 'Dubai, UAE'),
    (
        4,
        'Air France',
        'Paris, France'
    ),
    (
        5,
        'Singapore Airlines',
        'Singapore'
    ),
    (
        6,
        'Qantas',
        'Sydney, Australia'
    ),
    (
        7,
        'Lufthansa',
        'Cologne, Germany'
    );

-- Insert Data: Passengers
INSERT INTO
    Passengers (
        Passenger_ID,
        First_Name,
        Last_Name,
        Email,
        Passport_Number,
        Country
    )
VALUES (
        1,
        'John',
        'Doe',
        'john.doe@example.com',
        'A1234567',
        'USA'
    ),
    (
        2,
        'Alice',
        'Smith',
        'alice.smith@example.com',
        'B9876543',
        'UK'
    ),
    (
        3,
        'Hiroshi',
        'Tanaka',
        'hiroshi.t@example.com',
        'J5678901',
        'Japan'
    ),
    (
        4,
        'Marie',
        'Dubois',
        'marie.d@example.com',
        'F1122334',
        'France'
    ),
    (
        5,
        'Ahmed',
        'Khan',
        'ahmed.k@example.com',
        'P4455667',
        'UAE'
    ),
    (
        6,
        'Sarah',
        'Connor',
        'sarah.c@example.com',
        'U9988776',
        'USA'
    ),
    (
        7,
        'James',
        'Bond',
        'james.b@example.com',
        'K0070070',
        'UK'
    ),
    (
        8,
        'Chen',
        'Wei',
        'chen.w@example.com',
        'C3344556',
        'China'
    ),
    (
        9,
        'Maria',
        'Garcia',
        'maria.g@example.com',
        'S7788990',
        'Spain'
    ),
    (
        10,
        'Hans',
        'Mueller',
        'hans.m@example.com',
        'G1122339',
        'Germany'
    );

-- Insert Data: Flights
INSERT INTO
    Flights (
        Flight_ID,
        Airline_ID,
        Flight_Number,
        Origin_Code,
        Destination_Code,
        Departure_Time,
        Arrival_Time,
        Status
    )
VALUES (
        101,
        1,
        'DL101',
        'JFK',
        'LHR',
        '2023-10-01 18:00:00',
        '2023-10-02 06:00:00',
        'On Time'
    ),
    (
        102,
        2,
        'BA202',
        'LHR',
        'JFK',
        '2023-10-02 10:00:00',
        '2023-10-02 13:00:00',
        'On Time'
    ),
    (
        103,
        3,
        'EK303',
        'DXB',
        'JFK',
        '2023-10-03 02:00:00',
        '2023-10-03 08:00:00',
        'Delayed'
    ),
    (
        104,
        4,
        'AF404',
        'CDG',
        'DXB',
        '2023-10-04 14:00:00',
        '2023-10-04 23:00:00',
        'On Time'
    ),
    (
        105,
        5,
        'SQ505',
        'SIN',
        'HND',
        '2023-10-05 09:00:00',
        '2023-10-05 16:00:00',
        'Cancelled'
    ),
    (
        106,
        6,
        'QF606',
        'SYD',
        'SIN',
        '2023-10-06 12:00:00',
        '2023-10-06 18:00:00',
        'On Time'
    ),
    (
        107,
        7,
        'LH707',
        'FRA',
        'LHR',
        '2023-10-07 08:00:00',
        '2023-10-07 09:00:00',
        'On Time'
    ),
    (
        108,
        1,
        'DL108',
        'JFK',
        'CDG',
        '2023-10-08 20:00:00',
        '2023-10-09 09:00:00',
        'On Time'
    ),
    (
        109,
        3,
        'EK309',
        'DXB',
        'SIN',
        '2023-10-09 03:00:00',
        '2023-10-09 14:00:00',
        'On Time'
    ),
    (
        110,
        5,
        'SQ510',
        'SIN',
        'SYD',
        '2023-10-10 21:00:00',
        '2023-10-11 07:00:00',
        'On Time'
    );

-- Insert Data: Tickets
INSERT INTO
    Tickets (
        Ticket_ID,
        Flight_ID,
        Passenger_ID,
        Booking_Date,
        Seat_Class,
        Price,
        Seat_Number
    )
VALUES (
        1001,
        101,
        1,
        '2023-09-01',
        'Economy',
        500.00,
        '12A'
    ),
    (
        1002,
        101,
        2,
        '2023-09-02',
        'Business',
        1500.00,
        '2B'
    ),
    (
        1003,
        102,
        3,
        '2023-09-03',
        'First',
        3000.00,
        '1A'
    ),
    (
        1004,
        103,
        4,
        '2023-09-04',
        'Economy',
        700.00,
        '15C'
    ),
    (
        1005,
        103,
        5,
        '2023-09-05',
        'Economy',
        750.00,
        '16D'
    ),
    (
        1006,
        104,
        6,
        '2023-09-06',
        'Business',
        1200.00,
        '3A'
    ),
    (
        1007,
        106,
        7,
        '2023-09-07',
        'First',
        2500.00,
        '1F'
    ),
    (
        1008,
        107,
        8,
        '2023-09-08',
        'Economy',
        200.00,
        '20B'
    ),
    (
        1009,
        108,
        9,
        '2023-09-09',
        'Economy',
        600.00,
        '30C'
    ),
    (
        110,
        109,
        10,
        '2023-09-10',
        'Business',
        1800.00,
        '5K'
    ),
    (
        1011,
        101,
        6,
        '2023-09-15',
        'Economy',
        550.00,
        '14B'
    ),
    (
        1012,
        102,
        1,
        '2023-09-16',
        'Economy',
        600.00,
        '22A'
    ),
    (
        1013,
        104,
        2,
        '2023-09-17',
        'First',
        3500.00,
        '1C'
    ),
    (
        1014,
        108,
        3,
        '2023-09-18',
        'Business',
        1600.00,
        '4D'
    ),
    (
        1015,
        110,
        4,
        '2023-09-19',
        'Economy',
        400.00,
        '25E'
    );