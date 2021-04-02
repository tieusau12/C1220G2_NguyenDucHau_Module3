use furama_resort;

select customers.fullname_customer, acc.name_accompanied_service as `name`, acc.price_accompanied_service as price, acc.availability_status as `status`
from accompanied_services acc
	join contract_details cd on cd.id_accompanied_service = acc.id_accompanied_service
    join contracts c on cd.
    
where type_of_service.name_of_service ='Diamond' and (customers.address_customer='Vinh' or customers.address_customer='Quảng Ngãi')