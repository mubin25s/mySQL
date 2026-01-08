-- Pet Shelter Schema Definition

CREATE TABLE shelters (
    shelter_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255),
    contact_number VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    shelter_id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role VARCHAR(50),
    email VARCHAR(100),
    FOREIGN KEY (shelter_id) REFERENCES shelters (shelter_id)
);

CREATE TABLE pets (
    pet_id INT PRIMARY KEY,
    shelter_id INT,
    name VARCHAR(50) NOT NULL,
    species VARCHAR(50) NOT NULL,
    breed VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    adoption_status VARCHAR(20) DEFAULT 'Available',
    arrival_date DATE,
    FOREIGN KEY (shelter_id) REFERENCES shelters (shelter_id)
);

CREATE TABLE medical_records (
    record_id INT PRIMARY KEY,
    pet_id INT,
    checkup_date DATE,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    vet_name VARCHAR(100),
    FOREIGN KEY (pet_id) REFERENCES pets (pet_id)
);

CREATE TABLE adopters (
    adopter_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE adoptions (
    adoption_id INT PRIMARY KEY,
    pet_id INT,
    adopter_id INT,
    staff_id INT,
    adoption_date DATE,
    adoption_fee DECIMAL(10, 2),
    FOREIGN KEY (pet_id) REFERENCES pets (pet_id),
    FOREIGN KEY (adopter_id) REFERENCES adopters (adopter_id),
    FOREIGN KEY (staff_id) REFERENCES staff (staff_id)
);

CREATE TABLE donations (
    donation_id INT PRIMARY KEY,
    shelter_id INT,
    donor_name VARCHAR(100),
    amount DECIMAL(10, 2),
    donation_date DATE,
    donation_type VARCHAR(50),
    FOREIGN KEY (shelter_id) REFERENCES shelters (shelter_id)
);