drop database if exists demo_user;

create database demo_user;
use demo_user;

create table users(
	id int auto_increment primary key,
    `name` varchar(50) not null,
    email varchar(50) not null,
    country varchar(300)	
);

insert into users(`name`,email,country) 
values ("Nguyen Duc Hau","tieusau12@gmail.com","Da Nang"),
		("Le Duc sang","sanglee@gmail.com","Da Nang"),
		("Tran Hong Gia Dong","dongtran@gmail.com","Da Nang");
