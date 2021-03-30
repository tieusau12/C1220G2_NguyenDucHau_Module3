use furama_resort;

-- Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu 
-- là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự.
select * 
from employees 
where ((fullname_employee like "_%T_") or  (fullname_employee like "_%H_" ) 
										or  (fullname_employee like "_%K_")) and length(fullname_employee)<15;
-- where select substring(fullname_employee,-locate(' ',fullname_employee),) like "%T_";
                                        