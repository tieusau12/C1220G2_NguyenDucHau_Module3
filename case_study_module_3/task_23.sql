use furama_resort;

delimiter //
create procedure Sp_1(in id_customer int)
begin 
	delete from customers
    where customers.id_customer= id_customer;
end //
delimiter ;