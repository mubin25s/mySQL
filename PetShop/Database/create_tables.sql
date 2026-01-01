CREATE TABLE customer (
    Customer_ID INT PRIMARY KEY,
    C_nams VARCHAR(100),
    C_phone VARCHAR(20),
    C_email VARCHAR(100),
    C_address VARCHAR(255)
);

CREATE TABLE pet_categories (
    Category_ID INT PRIMARY KEY,
    Category_name VARCHAR(100)
);

CREATE TABLE pets (
    Pet_ID INT PRIMARY KEY,
    Pet_name VARCHAR(100),
    Category_ID INT,
    Breed VARCHAR(100),
    Pet_age INT,
    Price INT,
    Stock INT,
    Arrival_date VARCHAR(20),
    FOREIGN KEY (Category_ID) REFERENCES pet_categories (Category_ID)
);

CREATE TABLE orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_date VARCHAR(20),
    Total_amount INT,
    FOREIGN KEY (Customer_ID) REFERENCES customer (Customer_ID)
);

CREATE TABLE order_details (
    Detail_ID INT PRIMARY KEY,
    Order_ID INT,
    Pet_ID INT,
    Quantity INT,
    Price INT,
    FOREIGN KEY (Order_ID) REFERENCES orders (Order_ID),
    FOREIGN KEY (Pet_ID) REFERENCES pets (Pet_ID)
);

CREATE TABLE pet_food (
    Food_ID INT PRIMARY KEY,
    Pet_ID INT,
    Food_name VARCHAR(100),
    Brand VARCHAR(100),
    Stock INT,
    Price INT,
    FOREIGN KEY (Pet_ID) REFERENCES pets (Pet_ID)
);

CREATE TABLE suppliers (
    Supplier_ID INT PRIMARY KEY,
    S_name VARCHAR(100),
    S_contact VARCHAR(20),
    S_email VARCHAR(100),
    S_location VARCHAR(255)
);

CREATE TABLE pet_purchases (
    Purchase_ID INT PRIMARY KEY,
    Pet_ID INT,
    Supplier_ID INT,
    Purchase_date VARCHAR(20),
    Quantity INT,
    Cost_price INT,
    FOREIGN KEY (Pet_ID) REFERENCES pets (Pet_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES suppliers (Supplier_ID)
);

CREATE TABLE food_purchases (
    Food_purchase_ID INT PRIMARY KEY,
    Food_ID INT,
    Category_ID INT,
    Supplier_ID INT,
    Purchase_date VARCHAR(20),
    Quantity INT,
    Cost_price INT,
    FOREIGN KEY (Food_ID) REFERENCES pet_food (Food_ID),
    FOREIGN KEY (Category_ID) REFERENCES pet_categories (Category_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES suppliers (Supplier_ID)
);

CREATE TABLE vaccination (
    Vaccine_ID INT PRIMARY KEY,
    Pet_ID INT,
    Vaccine_name VARCHAR(100),
    Date_given VARCHAR(20),
    Next_dose VARCHAR(20),
    FOREIGN KEY (Pet_ID) REFERENCES pets (Pet_ID)
);