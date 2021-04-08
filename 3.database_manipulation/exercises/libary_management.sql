drop
database if exists libary_management;

create
database libary_management;

use
libary_management;

CREATE TABLE category
(
    id_book      INT(15) NOT NULL PRIMARY KEY,
    type_of_book VARCHAR(500)
);
CREATE TABLE book
(
    id_book          INT(15) NOT NULL PRIMARY KEY,
    book_name        VARCHAR(500) NOT NULL,
    book_author      VARCHAR(100) NOT NULL,
    price            DOUBLE,
    publisher        VARCHAR(100),
    year_of_publish YEAR,
    category_id_book INT(15),
    FOREIGN KEY (category_id_book)
        REFERENCES category (id_book)
);

CREATE TABLE student
(
    student_number    INT(15) NOT NULL PRIMARY KEY,
    student_name      VARCHAR(50)  NOT NULL default 'noname',
    date_of_birth     date         not null,
    address           VARCHAR(500) NOT NULL,
    email             VARCHAR(50)  NOT NULL,
    telephone_student int(10),
    image             BLOB
);



CREATE TABLE borrow_order
(
    id_book        INT(15) NOT NULL,
    FOREIGN KEY (id_book)
        REFERENCES book (id_book),
    id_student     INT(15) NOT NULL,
    FOREIGN KEY (id_student)
        REFERENCES student (student_number),
    id_order       INT(15) NOT NULL PRIMARY KEY,
    date_of_hire   DATE,
    date_back_book DATE
);

insert into category
values (1, 'khoa học'),
       (2, 'văn học'),
       (3, 'toán'),
       (4, 'kinh tế');

insert into book
values (1, 'cha giàu cha nghèo', 'không biết', 100, 'kim sắt', '1980', 4),
       (2, 'cha nghèo cha nghèo hơn', 'không biết', 100, 'kim đồng', '1980', 1),
       (3, 'cha giàu cha giàu hơn', 'không biết', 100, 'kim bạc', '1980', 2),
       (4, 'cha giàu cha nhất', 'không biết', 100, 'kim vàng', '1980', 4),
       (5, 'cha nghèo cha nghèo nhất', 'không biết', 100, 'kim cương', '1980', 3);

insert into student
values (1, 'Công sói già', '1991-12-12', '123 Hải Phòng', 'cong@gmai.com', 0905123456, ' không có ảnh'),
       (2, 'Đông Đỏng Đảnh', '1995-01-01', '12 Hoàng Sa', 'dong@gmai.com', 0905123456, ' không có ảnh'),
       (3, 'Sang Danh Hài', '1992-03-20', '23 Lê Duẩn', 'sang@gmai.com', 0905123456, ' không có ảnh'),
       (4, 'Kha Giá Sư', '1995-07-15', '13 Trần Cao Vân', 'kha@gmai.com', 0905123456, ' không có ảnh');