-- Bài tập: Lấy ra số lượng học viên của từng lớp.
select s.class_id, c.`name`, count(s.class_id) 'quantity'
from student s
         right join class c on s.class_id = c.id
group by s.class_id;

-- Bài tập: Lấy ra toàn bộ các instructor và student ở CodeGym.

select id, `name`, date_of_birth, 0 'type_person'
from student
union all
select id, `name`, date_of_birth, 1 'type_person'
from instructor;

select id, `name`
from student
union
select id, `name`
from instructor
union
select id, `name`
from class;

-- Bài tập: Lấy ra 3 học viên trẻ tuổi nhất ở CodeGym.
select *
from student
order by date_of_birth desc limit 3;

-- Bài tập: Lấy ra lớp không có học viên học.
select *
from class
where id in (
    select class_id
    from student
);

select *
from class
where exists(
              select *
              from student
              where class.id = student.class_id
          );

select length('Tí');

select char_length('Tí');

select concat('Hello', ' ', 'World');

select `name`, length(`name`), concat(id, `name`, date_of_birth)
from student;

select YEAR (CURDATE()), MONTH (CURDATE()), DAY (CURDATE());

SELECT SUBSTRING("SQL Tutorial", 1, 3) AS ExtractString;

select *
from student
where id > any (
    select id
    from class
);