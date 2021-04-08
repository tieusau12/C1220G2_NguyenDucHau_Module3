use
classicmodels;

SELECT status
FROM orders
GROUP BY status;

SELECT status,
       COUNT(*) AS 'So luong status'
FROM orders
GROUP BY status;

select status, sum(quantityOrdered * priceEach) as amount
from orders `or`
         inner join orderdetails det on `or`.orderNumber = det.orderNumber
group by status;

select orderNumber, sum(quantityOrdered * priceEach) as amount
from orderdetails
group by orderNumber;

select year (orderDate) as year, sum (quantityOrdered * priceEach) as total
from orders
    inner join orderdetails
on orders.orderNumber = orderdetails.orderNumber
where status = 'shipped'
group by year
having year > 2003;