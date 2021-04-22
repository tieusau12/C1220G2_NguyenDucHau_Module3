drop database if exists student_manager;

create database student_manager;

use student_manager;

create table class (
	id varchar(20) primary key ,
    class_name varchar(100) not null,
    type_of_class varchar(30)
);

insert into class 
values
		("C01","C1220G2", "Full Time"),
		("C02","C1220G2", "Full Time"),
		("A01","A0121G1", "Part Time"),
		("C03","C1220G2", "Full Time"),
		("A02","A0221G1", "Part Time");

create table student (
	id varchar(20) primary key ,
    `name` varchar(100) not null,
    address varchar(200) not null,
    id_card int not null,
    date_of_birth date not null,
    class_id varchar(20) not null,
    phone_number varchar(10),
    
    foreign key (class_id) references class (id) on delete cascade
);

insert into student
values
		("ST-001","Nguyen Duc Hau","Da Nang",201732081,"1997-04-02","C01","0772785411"),
		('ST-002',"Tran Hong Gia Dong","Da Nang",201639999,'1995-03-03',"A01","0336789452"),
		('ST-003',"Le Duc Sang","Quang Nam",201132451,'1992-07-19',"A02","0905463798"),
		('ST-004',"Nguyen Thanh Cong","Da Nang",201132111,'1991-04-25',"C02","0905295633"),
		('ST-005',"Nguyen Huy","Da Nang",201132081,'1991-02-28',"A02","0772345622"),
		('ST-006',"Dinh Van Thang","Ha Noi",201074568,'1991-01-02',"C01","0866591311");
		
		
		
