use furama_resort;

insert into levels(name_level)
values
("Trung cấp"),
("Cao đẳng"),
("Đại học"),
("sau đại học");

insert into positions(name_position)
values
("giám đốc"),
("quản lý"),
("giám sát"),
("chuyên viên"),
("phục vụ"),
("Lễ tân");

insert into type_of_service(name_of_service)
values
("Villa"),
("House"),
("Room");


insert into type_of_customers(type_of_customer_name )
values
("Diamond"),
("Platinium"),
("Gold"),
("Silver"),
("Member");

insert into accompanied_services(name_accompanied_service,price_accompanied_service,
									unit_accompanied_service,availability_status)
values
("massage",0,1,"available"),
("karaoke",0,1,"available"),
("thức ăn,",0,1,"not available"),
("nước uống",0,1,"available"),
("thuê xe di chuyển tham quan resort",0,1,"not available");

-- Sale – Marketing, Hành Chính, Phục vụ, Quản lý.
insert into departments(name_department)
values
('Sale – Marketing'),
('Hành Chính'),
('Phục vụ'),
('Quản lý');

 -- theo năm, tháng, ngày, giờ
insert into type_of_rental(name_of_rental,prcie)
values
('theo năm', 10000),
('theo ngày', 100),
('theo tháng', 500),
('theo giờ', 10);

insert into services ( name_service,`area`,floors,max_of_customer,rental_fee,id_rental_type,id_service_type,availability_status)
values
('Villa A', 150,2, 8,100,1,1,'not available'),
('Villa B', 150,2, 9,100,2,1,'available'),
('House A', 100,2, 4,100,3,1,'available'),
('House B', 80,2, 4,100,4,1,'not available'),
('Room A', 50,2, 2,100,3,1,'available'),
('Room B', 40,2, 2,100,2,1,'not available');

insert into employees
values
(1,'NSUT Thanh Công',1,1,3,'1991-12-12',201637373,2000,'0905456789','cong@gmail.com', '123 Hải Phòng'),
(2,'Danh Hài Đức Sang',2,2,3,'1992-12-12',201637373,1500,'0905456789','cong@gmail.com', '123 Hải Phòng'),
(3,'Tuấn Tài Tu',3,3,1,'1997-12-12',201637373,1200,'0905456789','cong@gmail.com', 'Đà Nẵng'),
(4,'Tùng Tieu',4,2,2,'2015-12-12',201637373,1200,'0905456789','cong@gmail.com', 'Đà Nẵng'),
(5,'Thăng Tha Thu',5,3,2,'1992-12-12',201637373,1200,'0905456789','cong@gmail.com', 'Quảng Trị');

insert into customers
values
(1,1,'Nguyen A','1987-6-12',201523234,'0905867123','a@gmail.com','44 Lê Lai'),
(2,2,'Nguyen B','2015-6-12',201523234,'0905867123','b@gmail.com','Đà Nẵng'),
(3,3,'Nguyen C','1987-6-12',201523234,'0905867123','c@gmail.com','Quảng Trị'),
(4,4,'Nguyen D','1987-6-12',201523234,'0905867123','d@gmail.com','Đà Nẵng'),
(5,5,'Nguyen E','1987-6-12',201523234,'0905867123','e@gmail.com','44 Lê Lai');

insert into contracts(id_employee,id_customer,id_service,date_started_contract,date_ended_contract,deposits)
values
(1,1,1,"2015-12-12","2019-03-12",100),
(2,2,2,"2018-12-12","2019-03-12",100),
(3,3,3,"2018-01-12","2019-08-12",100),
(4,4,4,"2018-01-12","2019-08-12",100),
(5,5,5,"2018-01-12","2019-08-12",100);

insert into contract_details(id_contract,id_accompanied_service,quantity)
values
(1,1,1),
(2,2,5),
(3,3,7),
(4,4,10),
(5,5,15);