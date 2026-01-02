-- Library Management System Tables

-- 1. Authors Table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Nationality VARCHAR(50),
    BirthYear INT
);

-- 2. Categories Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL,
    Description TEXT
);

-- 3. Publishers Table
CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY AUTO_INCREMENT,
    PublisherName VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    ContactNumber VARCHAR(20)
);

-- 4. Branches Table
CREATE TABLE Branches (
    BranchID INT PRIMARY KEY AUTO_INCREMENT,
    BranchName VARCHAR(100) NOT NULL,
    Location VARCHAR(255)
);

-- 5. Staff Table
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    BranchID INT,
    FOREIGN KEY (BranchID) REFERENCES Branches (BranchID)
);

-- 6. Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    CategoryID INT,
    PublisherID INT,
    ISBN VARCHAR(20) UNIQUE,
    PublicationYear INT,
    TotalCopies INT DEFAULT 1,
    AvailableCopies INT DEFAULT 1,
    FOREIGN KEY (AuthorID) REFERENCES Authors (AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers (PublisherID)
);

-- 7. Members Table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(20),
    JoinDate DATE DEFAULT(CURRENT_DATE)
);

-- 8. Loans Table
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    LoanDate DATE DEFAULT(CURRENT_DATE),
    DueDate DATE,
    ReturnDate DATE,
    Status ENUM(
        'Borrowed',
        'Returned',
        'Overdue'
    ) DEFAULT 'Borrowed',
    FOREIGN KEY (BookID) REFERENCES Books (BookID),
    FOREIGN KEY (MemberID) REFERENCES Members (MemberID)
);

-- 9. Reservations Table
CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    MemberID INT,
    ReservationDate DATE DEFAULT(CURRENT_DATE),
    Status ENUM(
        'Pending',
        'Fulfilled',
        'Cancelled'
    ) DEFAULT 'Pending',
    FOREIGN KEY (BookID) REFERENCES Books (BookID),
    FOREIGN KEY (MemberID) REFERENCES Members (MemberID)
);

-- 10. Fines Table
CREATE TABLE Fines (
    FineID INT PRIMARY KEY AUTO_INCREMENT,
    LoanID INT,
    FineAmount DECIMAL(10, 2),
    PaymentStatus ENUM('Unpaid', 'Paid') DEFAULT 'Unpaid',
    FineDate DATE DEFAULT(CURRENT_DATE),
    FOREIGN KEY (LoanID) REFERENCES Loans (LoanID)
);