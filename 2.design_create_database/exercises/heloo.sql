drop database if exists oto_management;

create database oto_management;
use oto_management;

create table products(
	product_code int(20) not null primary key,
    product_name varchar(50),
    supplier varchar(40),
    amount_product int,
    import_price double,
    price double
);
create table products_line(
	product_code int(20) not null,
    `description` varchar(50)
);
create table customers(
	customer_number int(20) not null primary key,
    customer_name varchar(50),
    phone_customer int(15),
    address_customer varchar(50)
);

create table orders(
	order_number int(30) not null primary key,
    date_of_purchase date,
    date_of_delivery_request date,
    actual_delivery_date date,
    number_of_order int,
    unit_price double
);

create table employeess();

create table offices();