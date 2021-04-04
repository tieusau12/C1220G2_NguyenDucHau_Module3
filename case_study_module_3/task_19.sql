use furama_resort;

update accompanied_services acc
join contract_details cd 
set price_accompanied_service = price_accompanied_service*2
where exists ( select acc.id_accompanied_service
	group by acc.id_accompanied_service
    having count (acc.id_accompanied_service)>5);