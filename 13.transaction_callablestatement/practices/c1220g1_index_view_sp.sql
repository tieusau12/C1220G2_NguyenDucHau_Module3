SELECT DATEDIFF("2017-06-25", "2017-06-15");  

select *
from student
where id = 3;

select *
from student
where `name` = 'Long';

create index idx_student_name
on student (`name`);

-- VIEW
create view v_instructor_and_student
as
select id, `name`, date_of_birth, 0 'type_person'
from student
union all
select id, `name`, date_of_birth, 1 'type_person'
from instructor;

select *
from v_instructor_and_student v
	inner join instructor_teach_class itc on v.id = itc.instructor_id;

-- SP

delimiter //
create procedure find_info_student_by_keyword (p_keyword varchar(20))
begin
    select *
    from student
    where `name` like concat('%', p_keyword, '%');
-- ... your code here
end;
// delimiter ;

call find_info_student_by_keyword('kh');

delimiter //
create procedure find_info_student_by_keyword_inout (inout p_keyword varchar(20))
begin
	set p_keyword = (
		select count(*)
		from student
		where `name` like concat('%', p_keyword, '%')
    );
-- ... your code here
end;
// delimiter ;

set @p_keyword = 't';
call find_info_student_by_keyword_inout(@p_keyword);
select @p_keyword;

delimiter //
create procedure find_info_student_by_keyword_out (p_keyword varchar(20), out p_result int)
begin
	set p_result = (
		select count(*)
		from student
		where `name` like concat('%', p_keyword, '%')
    );
-- ... your code here
end;
// delimiter ;

call find_info_student_by_keyword_out('t', @p_result_quantity);
select @p_result_quantity;


-- trigger
delimiter //
create trigger save_account_james	
before insert
on student for each row
begin
	insert into account_james
    values (lcase(new.email), '12345678');
    
    if new.account_james_account is null then
		set new.account_james_account = new.email;
    end if;
end;
// delimiter ;

insert into student (`name`, date_of_birth, email, class_id)
values
('Hùng', '2000-07-14', 'hung@gmail.com', 1);

-- function
delimiter //
create function sum2num (num1 int, num2 int)
returns int
deterministic
begin
	declare total int;
    set total = num1 + num2;
	return total;
end;
// delimiter ;

select sum2num(5, 6);