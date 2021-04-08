use
furama_resort;

delete
customers, contracts, contract_details
from customers
left join contracts
	on customers.id_customer = contracts.id_customer
left join contract_details cd
	on cd.id_contract = contracts.id_contract
where customers.id_customer not in (
	select customers.id_customer 
    where year(contracts.date_started_contract) < 2019
    and customers.id_customer = contracts.id_customer
    );