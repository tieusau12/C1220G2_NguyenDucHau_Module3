use furama_resort;

create view V_employee as
select employees.*
from employees
join contracts on employees.id_employee = contracts.id_employee
where employees.address_employee = 'Đà Nẵng'
		and contracts.date_started_contract ='2019-12-12';

select * from V_employee;