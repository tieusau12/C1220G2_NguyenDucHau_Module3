
-- 1. Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào.-- 
SELECT 
    s.id, s.`name` AS 'student name', c.`name` AS class_name
FROM
    student s
        INNER JOIN
    class c ON s.class_id = c.id;


-- select *
-- from student
-- where `name` = 'Trang';

-- 2. Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào, lớp đó thuộc loại lớp nào.
select s.id, s.`name` as 'student name', c.`name` as class_name, toc.`name` type_of_class_name
from student s
	inner join class c on s.class_id = c.id
    inner join type_of_class toc on toc.id = c.type_of_class_id;
    
--     3. Lấy ra thông tin các học viên kể cả các học viên không theo học lớp nào.
select s.id, s.`name` as 'student name', c.`name` as class_name
from class c
	right join student s on s.class_id = c.id;
    
select s.id, s.`name` as 'student name', c.`name` as class_name
from student s
	left join class c on s.class_id = c.id;
    
--     FULL joiN
select *
from student s
	left outer join class c on s.class_id = c.id
union
select *
from student s
	right outer join class c on s.class_id = c.id;
    
-- 4. lấy thông tin của các học viên tên 'Trang' và 'Mai’.
select *
from student
where `name` = 'Trang' or `name` = 'Mai';

-- 5. Lấy ra số lượng học viên của từng lớp.
select s.class_id, c.`name`, count(s.class_id) 'quantity'
from student s
	right join class c on s.class_id = c.id
group by s.class_id;

SeLECT 
    c.id, c.`name`, COUNT(s.class_id) 'quantity'
FroM
    student s
        RigHT JOIN
    class c ON s.class_id = c.id
Group bY c.id
HAViNG c.`name` like '%C%';

-- 6. Lấy ra danh sách học viên và sắp xếp tên theo alphabet.
sEleCT *
From student
ORDEr by `name` ASC;