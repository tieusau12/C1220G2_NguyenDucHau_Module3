drop database if exists student_manager;

create database student_manager;

use student_manager;

create table suppliers(
	supplier_id int(11) not null auto_increment,
    supplier_name varchar(50) not null,
    account_rep varchar(30) not null default 'TBD',
		constraint suppliers_pk primary key (supplier_id)
);

create table contactss(
		contact_id int(11) not null auto_increment,
        last_name varchar(30) not null,
        first_name varchar(20) ,
        birthday date,
			constraint contacts_pk primary key (contact_id)
);

drop table suppliers, contactss;

alter table contactss
	add phone_number int(10) not null
     after 	contact_id;
     
alter table suppliers
	add phone_number int(10) not null
		after supplier_name,
	add email varchar(30) not null 
		after phone_number;
alter table contactss
	modify last_name varchar(40) null;
    
alter table suppliers
	modify phone_number int(15) not null,
    modify email varchar(35) not null;
    
alter table contactss
	drop column contact_id;
alter table contactss
	change column phone_number telephone_number int(35) not null;
    
    
alter table suppliers
	rename to supplierss;