use
classicmodels;

select *
from customers
where customerNumber = 175;

explain
select *
from customers
where customerNumber = 175;


alter table customers
    add index idx_customerNumber(customerNumber);

explain
select *
from customers
where customerNumber = 175;


alter table customers
    add index idx_full_name(contactFirstName, contactLastName);

explain
select *
from customers
where contactFirstName = 'Jean'
   or contactFirstName = 'King';

-- delete index 
alter table customers drop index idx_full_name;