use classicmodels;

select cus.customerNumber, customerName, phone, paymentDate, amount 
from customers cus
inner join payments pay
on cus.customerNumber = pay.customerNumber
where city = 'Las Vegas';


select cus.customerNumber, cus.customerName, orders.orderNumber, orders.status
from customers cus
left join orders 
on cus.customerNumber = orders.customerNumber ;

select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers LEFT JOIN orders
on customers.customerNumber = orders.customerNumber
where orderNumber is null;