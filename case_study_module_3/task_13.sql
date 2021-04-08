use
furama_resort;

drop view if exists contract_details_acc;

create view contract_details_acc as
select count(contract_details.id_accompanied_service) as total_accompanied_service
from contract_details
group by contract_details.id_accompanied_service;

select*
from contract_details_acc;

-- drop view if exists max_1;
-- create view max_1 as
-- select max(total_accompanied_service) as `max`
-- from contract_details_acc;

-- select* from max_1;

select acc.name_accompanied_service, count(*) total_of_accompanied_service
from contract_details
         join accompanied_services acc on acc.id_accompanied_service = contract_details.id_accompanied_service
group by acc.name_accompanied_service
having total_of_accompanied_service >= all (select max(total_accompanied_service)
                                            from contract_details_acc);