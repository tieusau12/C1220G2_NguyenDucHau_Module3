drop database if exists student_management;
create database student_management;
use student_management;

create table student (
	id int primary key,
    `name` varchar(50),
    date_of_birth date,
    email varchar(40)
);
insert into student (id, `name`, date_of_birth)
values
(123, 'Duc Hau', '2021-03-25'),
(345, 'Sang Nguyen', '2021-03-25'),
(456, 'Gia Dong', '2021-03-25'),
(789, 'Thành Cong', '2021-03-25');

-- alter table student
-- add column email varchar(30);

delete from student
where id = 456;

drop table student;

drop database student_management;

select `name`
from student
where id = 456;

select *
from student
where `name` = 'Duc Hau';

select *
from student
where `name` like '%Sang%';

