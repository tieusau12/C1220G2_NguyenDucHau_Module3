use furama_resort;


select ser.id_service, ser.name_service, ser.area,
		ser.rental_fee, toc.name_of_service, con.date_started_contract
from services ser
	inner join type_of_service toc on ser.id_service_type = toc.id_service_type
    inner join contracts con on ser.id_service = con.id_service
where con.date_started_contract not in 
	(select con.date_started_contract
		from contracts 
        where (date_started_contract between 2019-01-01 and 2019-03-31));
	