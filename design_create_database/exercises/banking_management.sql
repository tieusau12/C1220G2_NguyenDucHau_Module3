drop database if exists banking_management;

create database banking_management;
use banking_management;

create table customers(
	customer_number int(10) not null auto_increment,
    fullname varchar(50),
    address varchar(50),
    email varchar(30),
    phone int(15),
    primary key (customer_number)
);

create table accounts(
	account_number int(20) not null primary key,
    account_type varchar(40),
    `date` date,
    balance int(40),
    customer_account int,
    foreign key (customer_account) references customers(customer_number)
);

create table transactions (
	tran_number int (20) not null primary key,
    account_number int(20) not null,
    foreign key (account_number) references accounts(account_number),
    tran_date date,
    amounts double,
    descriptions varchar(50)
);



