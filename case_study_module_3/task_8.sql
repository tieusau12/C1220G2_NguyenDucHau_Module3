use furama_resort;

select distinct customers.fullname_customer
from customers;

select customers.fullname_customer
from customers
union
select customers.fullname_customer
from customers;


select *
from customers
group by customers.fullname_customer;

select *
from customers t1
	left join customers t2 on t1.fullname_customer = t2.fullname_customer and t1.id_customer > t2.id_customer
where t2.fullname_customer is null;
