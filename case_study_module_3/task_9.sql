use furama_resort;

select month(c.date_started_contract) as 'month' , sum(c.total_money) as 'Total money',count(*) as no_of_booking
from  contracts c
where year(c.date_started_contract)=2019
group by month(c.date_started_contract);

