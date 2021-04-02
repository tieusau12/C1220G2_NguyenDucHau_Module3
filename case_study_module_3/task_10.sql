use furama_resort;

select contracts.id_contract, contracts.date_started_contract, contracts.date_ended_contract, 
		contracts.deposits, count(contract_details.id_accompanied_service) as 'amount accompanied service'
from contracts
 join contract_details on contracts.id_contract = contract_details.id_contract
 group by contracts.id_contract;