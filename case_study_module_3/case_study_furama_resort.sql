drop database if exists furama_resort;

create database furama_resort;

use furama_resort;

create table customers(
	id_customer int primary key,
    id_type_of_customer int not null,
	fullname_customer varchar(45) default "no name",
    date_of_birth_customer date,
    id_card_customer int(10),
    phone_number int(10),
    email varchar(30),
    address_customer varchar(300),
    foreign key (id_type_of_customer) references type_of_customers(id_type_of_customer)
);

create table type_of_customers(
	id_type_of_customer int not null primary key,
    type_of_customer_name varchar(45)
);

create table contracts(
	id_contracts int not null primary key,
    id_employee int not null,
    
    id_customer int not null,
    foreign key (id_customer) references customers(id_customer),
    id_service int not null,
    foreign key (id_service) references services(id_service),
    date_started_contract date,
    date_ended_contract date,
    deposits double ,
    total_money double
);

create table services(
	id_service int primary key ,
    name_service varchar(45) ,
    `area` double ,
    floors int ,
    max_of_customer  int(45),
    rental_fee double,
    id_rental_type int ,
    foreign key (id_rental_type) references type_of_rental(id_rental_type),
    id_service_type int ,
    foreign key (id_service_type) references type_of_service(id_service_type),
    availability_status varchar(45)
);

create table type_of_rental(
	id_rental_type int  primary key,
    name_of_rental varchar(45),
    prcie double 
);

create table type_of_service(
	id_service_type int primary key,
    name_of_service varchar(300)
);