use
classicmodels;

create view customer_views as
select customerNumber, customerName, phone
from customers;

select *
from customer_views;

-- cap nhat view 

create
or replace view customer_view as

select customerNumber,
       customerName,
       contactFirstName,
       contactLastName,
       phone
from customers
where city = "Nantes";

-- xoa view

drop view customer_views;