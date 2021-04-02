use furama_resort;

select cus.fullname_customer,count(*) as  no_of_booking
from customers cus
	
	left join contracts con on cus.id_customer = con.id_customer   
    inner join type_of_customers toc on cus.id_type_of_customer = toc.id_type_of_customer
where toc.type_of_customer_name = "Diamond"
group by cus.id_customer 
order by no_of_booking ;