use
furama_resort;

update customers
set id_type_of_customer = 1
where customers.id_customer in (select customers.id_customer
                                from contracts
                                         join services on contracts.id_service = services.id_service
                                         join contract_details cd on cd.id_contract = contracts.id_contract
                                         join accompanied_services acc
                                              on cd.id_accompanied_service = acc.id_accompanied_service
                                where year (
    contracts.date_started_contract) = 2021
  and customers.id_customer = 2
group by customers.id_customer
having sum (services.rental_fee + cd.quantity*acc.price_accompanied_service) >800);

select *
from customers;