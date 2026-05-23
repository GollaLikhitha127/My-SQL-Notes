CREATE DATABASE resturant_management;
USE  resturant_management;

CREATE TABLE restaurant(
Restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
location VARCHAR(100),
Rating DECIMAL(3,2)
);

CREATE TABLE customer(
CustomerID INT AUTO_INCREMENT PRIMARY KEY,
FristName VARCHAR(49) NOT NULL,
LastName VARCHAR(49) NOT NULL,
Email VARCHAR(19) UNIQUE,
Address VARCHAR(255)
); 


CREATE TABLE orders(
OrderID INT AUTO_INCREMENT PRIMARY KEY,
CustomerID INT,
Restaurant_id INT,
OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
TotalAmount DECIMAL(10,3),
Status VARCHAR(20),
FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID),
FOREIGN KEY (Restaurant_id ) REFERENCES restaurant(Restaurant_id )
);
