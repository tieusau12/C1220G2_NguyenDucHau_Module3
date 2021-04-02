use furama_resort;

select e.id_employee, e.fullname_employee, levels.name_level, d.name_department
		,e.phone_number, e.address_employee, count(c.id_employee) as no_of_contract
from employees e
  join levels on levels.id_level = e.id_level
  join departments d on d.id_department = e.id_department
  join contracts c  on c.id_employee = e.id_employee
where c.date_started_contract between '2018-01-01'and'2019-12-31'
group by e.id_employee
having no_of_contract <= 3;