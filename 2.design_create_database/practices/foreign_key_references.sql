drop database if exists foreign_key_references;

create database foreign_key_references;

use foreign_key_references;

create table customers(
	id int auto_increment primary key,
	`name` varchar(50),
    address varchar(40),
    email varchar(30)
);

create table orders(
	id int auto_increment,
    staff varchar(40),
    primary key(id),
    customer_id int ,
    foreign key(customer_id) references customers(id)
);

