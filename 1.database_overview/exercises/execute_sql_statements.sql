drop
database if exists classmodels;

create
database classmodels;

use
classmodels;

create table customer
(
    customer_name varchar(50),
    phone         int,
    city          varchar(30),
    country       varchar(30)
);

insert into customer
values ('hau', 0772785411, 'DN', "Quang Nam"),
       ('Sang', 0905463798, 'DN', "Quang Nam"),
       ('Dong', 0244585889, 'DN', "Quang Nam");

select *
from customer;

select customer_name, phone, country
from customer;

select *
from customer
where customer_name = 'Hau';

select *
from customer
where customer_name like '%Hau%';