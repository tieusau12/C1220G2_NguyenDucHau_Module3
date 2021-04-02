use furama_resort;

select customers.fullname_customer, acc.name_accompanied_service as `name accompanied service`,
		acc.price_accompanied_service as price, acc.availability_status as `status`
        ,customers.address_customer
        
from accompanied_services acc
	 join contract_details cd on cd.id_accompanied_service = acc.id_accompanied_service
	 join contracts c on cd.id_contract = c.id_contract
     right join customers on customers.id_customer = c.id_customer
where customers.id_type_of_customer = 1   and customers.address_customer in ('Quảng Nam ','Quảng Trị')