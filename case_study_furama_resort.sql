drop database if exists furama_resort;

create database furama_resort;

use furama_resort;

CREATE TABLE positions (
    id_position INT AUTO_INCREMENT PRIMARY KEY,
    name_position VARCHAR(50)
);

CREATE TABLE levels (
    id_level INT AUTO_INCREMENT PRIMARY KEY,
    name_level VARCHAR(50)
);

CREATE TABLE departments (
    id_department INT AUTO_INCREMENT PRIMARY KEY,
    name_department VARCHAR(50)
);


CREATE TABLE employees (
    id_employee INT AUTO_INCREMENT PRIMARY KEY,
    fullname_employee VARCHAR(100),
    id_position INT,
    FOREIGN KEY (id_position)
        REFERENCES positions (id_position),
    id_level INT,
    FOREIGN KEY (id_level)
        REFERENCES levels (id_level),
    id_department INT,
    FOREIGN KEY (id_department)
        REFERENCES departments (id_department),
    date_of_birth DATE,
    id_card_employee INT(10),
    salary DOUBLE,
    phone_number INT(10),
    email_employee VARCHAR(50),
    address_employee VARCHAR(100)
);

CREATE TABLE type_of_customers (
    id_type_of_customer INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    type_of_customer_name VARCHAR(45)
);

CREATE TABLE customers (
    id_customer INT AUTO_INCREMENT PRIMARY KEY,
    id_type_of_customer INT NOT NULL,
    fullname_customer VARCHAR(45) DEFAULT 'no name',
    date_of_birth_customer DATE,
    id_card_customer INT(10),
    phone_number INT(10),
    email VARCHAR(30),
    address_customer VARCHAR(300),
    FOREIGN KEY (id_type_of_customer)
        REFERENCES type_of_customers (id_type_of_customer)
);

CREATE TABLE type_of_rental (
    id_rental_type INT AUTO_INCREMENT PRIMARY KEY,
    name_of_rental VARCHAR(45),
    prcie DOUBLE
);

CREATE TABLE type_of_service (
    id_service_type INT AUTO_INCREMENT PRIMARY KEY,
    name_of_service VARCHAR(300)
);

CREATE TABLE services (
    id_service INT AUTO_INCREMENT PRIMARY KEY,
    name_service VARCHAR(45),
    `area` DOUBLE,
    floors INT,
    max_of_customer INT(45),
    rental_fee DOUBLE,
    id_rental_type INT,
    FOREIGN KEY (id_rental_type)
        REFERENCES type_of_rental (id_rental_type),
    id_service_type INT,
    FOREIGN KEY (id_service_type)
        REFERENCES type_of_service (id_service_type),
    availability_status VARCHAR(45)
);
CREATE TABLE accompanied_services (
    id_accompanied_service INT AUTO_INCREMENT PRIMARY KEY,
    name_accompanied_service VARCHAR(50),
    price_accompanied_service DOUBLE,
    unit_accompanied_service INT,
    availability_status VARCHAR(50)
);

CREATE TABLE contracts (
    id_contract INT AUTO_INCREMENT PRIMARY KEY,
    id_employee INT NOT NULL,
    FOREIGN KEY (id_employee)
        REFERENCES employees (id_employee),
    id_customer INT NOT NULL,
    FOREIGN KEY (id_customer)
        REFERENCES customers (id_customer),
    id_service INT NOT NULL,
    FOREIGN KEY (id_service)
        REFERENCES services (id_service),
    date_started_contract DATE,
    date_ended_contract DATE,
    deposits DOUBLE,
    total_money DOUBLE
);

CREATE TABLE contract_details (
    id_contract_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_contract INT,
    FOREIGN KEY (id_contract)
        REFERENCES contracts (id_contract),
    id_accompanied_service INT,
    FOREIGN KEY (id_accompanied_service)
        REFERENCES accompanied_services (id_accompanied_service),
    quantity INT
);
