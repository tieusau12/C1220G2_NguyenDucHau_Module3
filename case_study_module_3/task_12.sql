use
furama_resort;

select contracts.id_contract,
       employees.fullname_employee,
       customers.fullname_customer,
       customers.phone_number as phone_customer,
       services.name_service,
       count(*) as 'amount_accompanied_services'
        ,
       contracts.date_started_contract,
       contracts.deposits
from employees
         inner join contracts on contracts.id_employee = employees.id_employee
         inner join customers on customers.id_customer = contracts.id_customer
         inner join services on services.id_service = contracts.id_service
         inner join contract_details on contracts.id_contract = contract_details.id_contract
where contracts.id_contract in (
    select id_contract
    from contracts
    where ((month(date_started_contract) between 9 and 12) and year (
    date_started_contract)=2019) )
  and contracts.id_contract not in (
select id_contract
from contracts
where ((month (date_started_contract) between 1 and 6) and year (date_started_contract)=2019) )
group by contracts.id_contract
order by contracts.id_contract