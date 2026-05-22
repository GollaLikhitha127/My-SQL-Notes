CREATE DATABASE resturant_management;
USE  resturant_management;

CREATE TABLE restaurant(
Restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
location VARCHAR(100),
Rating DECIMAL(3,2)
);
