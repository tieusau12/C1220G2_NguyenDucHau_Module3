use
furama_resort;

select *
from customers
where ((year(current_timestamp) - year (date_of_birth_customer) >18)
    or (year(current_timestamp) - year (date_of_birth_customer) <50))
  and (address_customer = "Đà Nẵng" or address_customer = "Quảng Trị");