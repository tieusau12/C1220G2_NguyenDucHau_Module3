drop
database if exists functions_in_mysql;

create
database functions_in_mysql;
use
functions_in_mysql;

create table student
(
    id     int         not null,
    `name` varchar(50) not null,
    age    int(100),
    course varchar(20) not null,
    money  double
);

insert into student
values (1, 'Hoang', 21, 'CNTT', 400000.0),
       (2, 'Hau', 19, 'DTVT', 800000.0),
       (3, 'Hoa', 18, 'KTDN', 400000.0),
       (4, 'Hang', 19, 'CK', 770000.0),
       (5, 'Huong', 20, 'TCNH', 1000000.0),
       (5, 'Huong', 20, 'TCNH', 500000.0);


select *
from student
where student.name = 'Huong';

select student.name, sum(student.money) as sum
from student
where student.name = 'Huong';

select distinct `name`
from student;