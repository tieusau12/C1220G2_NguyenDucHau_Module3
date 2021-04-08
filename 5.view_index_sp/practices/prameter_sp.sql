use
classicmodels;

-- tham so loai in 
DELIMITER
//
CREATE PROCEDURE getCusById(IN cusNum INT (11))
BEGIN
SELECT *
FROM customers
WHERE customerNumber = cusNum;
END
//
DELIMITER ;

call getCusById();

-- tham so loai out
delimiter
//
create procedure GetCustomersCountByCity(
    in in_city varchar (50),
    out total int)

begin
select count(customerNumber)
into total
from customers
where city = in_city;
end
//
delimiter ;

call GetCustomersCountByCity('Lyon',@total);

select @total;

-- tham so loai inout
delimiter
//
create procedure SetCounter(
    inout counter int,
    in inc int)
begin 
	set
counter = counter +inc;
end
//
delimiter ;

set
@counter =1;
call SetCounter(@counter,1);
call SetCounter(@counter,1);
call SetCounter(@counter,5);

select @counter;


