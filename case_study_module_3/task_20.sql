use furama_resort;

select id_employee id , fullname_employee fullname,employees.date_of_birth date_of_birth , employees.address_employee address
		,employees.email_employee email , employees.phone_number phone_number
from employees 
union 
select id_customer id , customers.fullname_customer fullname , customers.date_of_birth_customer date_of_birth
		, customers.address_customer address, customers.email email , customers.phone_number phone_number
from customers
group by id;

