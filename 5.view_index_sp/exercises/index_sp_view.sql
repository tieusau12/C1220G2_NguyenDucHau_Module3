drop
database if exists demo;

create
database demo;
use
demo;

create table products
(
    id                  int primary key,
    product_code        varchar(20),
    product_name        varchar(50),
    product_price       double,
    product_amount      int,
    product_description varchar(500),
    product_status      varchar(200)
);

insert into products
values (1, 'IP', 'Iphone', 500, 10, "Color Gold", "available"),
       (2, 'Sam', 'Sam Sung', 900, 10, "Color Silver", "unavailable");

alter table products
    add index idx_productCode(product_code);
explain
select *
from products
where product_code = "Sam";

alter table products
    add index idx_product_name_price(product_name,product_price);
explain
select *
from products
where product_name = 'Iphone'
   or product_price = '900';

create view product_views as
select product_code, product_name, product_price, product_status
from products;
select *
from product_views;

drop view product_views;

create
or replace view product_views as
select product_code, product_name, product_price, product_amount, product_description
from products
where product_name = 'Sam Sung';
select *
from product_views;

delimiter
//
create procedure find_all_product()
begin
select *
from products;
end
//
delimiter ;

call find_all_product;

delimiter
//
create procedure add_new_product()
begin
insert into products
values (3, 'Mi', 'Xiaomi', 400, 0, "Color Red", "unavailable");
end
//
delimiter ;

call add_new_product();

delimiter
//
create procedure edit_product(p_id int, p_price double)
begin
update products
set product_price = p_price
where id = p_id;
end
//
delimiter ;

call edit_product(2,1000);

delimiter
//
create procedure delete_product(p_id int)
begin
delete
from products
where id = p_id;
end
//
delimiter ;

call delete_product(2);

