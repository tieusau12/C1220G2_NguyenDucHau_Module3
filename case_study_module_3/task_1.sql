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
("massage",100,5,"available"),
("karaoke",50,2,"available"),
("thức ăn,",10,10,"not available"),
("nước uống",5,100,"available"),
("thuê xe di chuyển tham quan resort",200,2,"not available");

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
('Villa A', 150,2, 8,300,1,2,'not available'),
('Villa B', 150,2, 9,250,2,2,'available'),
('House A', 100,2, 4,150,3,3,'available'),
('House B', 80,2, 4,100,4,2,'not available'),
('Room A', 50,2, 2,70,3,1,'available'),
('Room B', 40,2, 2,50,2,2,'not available');

insert into employees( fullname_employee, id_position, id_level, id_department,	date_of_birth, id_card_employee,	
			salary,	phone_number, email_employee, address_employee)
values
('Tạ Giải Ngữ ',1,1,3,'1991-12-12',201457859,2000,'0905456789','cong@gmail.com', ' Hải Phòng'),
('Nhậm Tiêu Dao ',2,2,3,'1992-12-12',201732018,1500,'0772785411','toitensang@gmail.com', ' Quảng Nam'),
('Công Công Thái ',3,3,1,'1997-12-12',201637373,1300,'0904685463','toitentu@gmail.com', 'Đà Nẵng'),
('Tùng Tiêu Túng ',4,2,2,'2015-12-12',201638458,500,'0237548960','tieutung@gmail.com', 'Đà Nẵng'),
('Đinh Khả Như ',5,3,2,'1992-12-12',201635973,100,'0905489333','conghiaha@gmail.com', 'Quảng Trị');

insert into customers(id_type_of_customer, fullname_customer, date_of_birth_customer,
	id_card_customer,	phone_number,	email,	address_customer)
values
(1,'Toàn Nguyen Văn ','1987-6-12',201523456,'0905222444','toan@gmail.com','Quảng Nam'),
(2,'Tố Trần CÔng ','2000-9-21',202023234,'0775896422','trancongto@gmail.com','Đà Nẵng'),
(3,'Hà XUân Trang','1997-8-12',201725634,'0905364999','trangngungoc@gmail.com','Quảng Trị'),
(4,'Quyên Trần Anh','1995-7-22',201523297,'0772145333','quyenqyen@gmail.com','Đà Nẵng'),
(5,'Lý Lan','1990-6-12',201320612,'0334785555','lanlan@gmail.com','Hồ Chí Minh'),
(3,'Nguyen Văn Thần','1987-6-12',201523479,'0905225644','nguyenvan@gmail.com','Vinh'),
(2,'Thân Công Báo ','2000-9-21',201732054,'0775835942','trancongto@gmail.com','Quảng Ngãi'),
(1,'Như Như Thiến ','1997-8-12',201725245,'0903456999','nhunhu@gmail.com','Quảng Trị'),
(4,'Hạo Nhiên Văn','1995-7-22',201523397,'0772345333','haonhienvan@gmail.com','Quảng Ngãi'),
(5,'Lý Vấn Kiếm ','1990-6-12',201320110,'0334985555','lykiem@gmail.com','Hà Nội ');


insert into contracts(id_employee,id_customer,id_service,date_started_contract,date_ended_contract,deposits,total_money)
values
(1,1,1,"2018-12-12","2019-03-12",100,500),
(2,2,2,"2018-09-20","2020-03-12",300,900),
(3,3,3,"2019-05-24","2019-06-29",500,400),
(4,4,4,"2020-01-19","2021-02-20",400,1000),
(5,5,5,"2018-05-17","2020-01-13",200,5000),
(1,2,1,"2021-01-12","2021-03-12",900,500),
(2,3,2,"2019-09-20","2020-03-12",500,600),
(5,8,3,"2019-05-24","2019-06-29",500,400),
(2,4,4,"2020-01-19","2020-02-20",400,5000),
(4,5,5,"2021-05-17","2021-06-13",100,1000),
(4,7,4,"2020-01-19","2021-02-20",400,1000),
(5,10,5,"2018-05-17","2020-01-13",200,5000),
(1,8,1,"2021-01-12","2021-03-12",900,500),
(2,9,2,"2019-09-20","2020-03-12",500,600),
(5,8,3,"2019-05-24","2019-06-29",500,400);


insert into contract_details(id_contract,id_accompanied_service,quantity)
values
(1,1,1),
(2,2,5),
(3,3,7),
(4,4,10),
(5,5,15);
insert into contract_details(id_contract,id_accompanied_service,quantity)
values
(13,1,1),
(15,2,5),
(8,3,7),
(4,5,10),
(2,5,15);
