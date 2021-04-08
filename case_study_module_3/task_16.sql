use
furama_resort;

delete
from employees
where id_employee not in (
    select contracts.id_employee
    from contracts
    where (year(contracts.date_started_contract) between 2018 and 2020)
    group by employees.id_employee
)