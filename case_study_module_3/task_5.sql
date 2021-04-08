use
furama_resort;

select cus.id_customer,
       cus.fullname_customer,
       toc.type_of_customer_name,
       con.id_contract,
       ser.id_service
        ,
       ser.name_service,
       con.date_started_contract,
       con.date_ended_contract,
       (ser.rental_fee + sum(acc_ser.price_accompanied_service * con_d.quantity)) as 'Total Payment'
from customers cus
         inner join type_of_customers toc on cus.id_type_of_customer = toc.id_type_of_customer
         inner join contracts con on cus.id_customer = con.id_customer
         inner join services ser on con.id_service = ser.id_service
         inner join contract_details con_d on con.id_contract = con_d.id_contract
         inner join accompanied_services acc_ser on con_d.id_accompanied_service = acc_ser.id_accompanied_service
group by con.id_contract;