DROP database if exists tabledb;

create database tabledb;

use tabledb;

drop table if exists usertbl;

create table usertbl (
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthyear int not null,
    addr varchar(10) not null,
    mobile1 char(3),
    mobile2 char(8),
    height smallint,
    mDate date
);

drop table if exists buytbl;
create table buytbl
(
    num int auto_increment not null primary key ,
    userID char(8) not null,
    prodName char(6) not null,
    groupName char(4),
    price int not null,
    amount smallint not null,

-- foreign key ()
-- references [참조할테이블명] (참조할컬럼)

 foreign key (userID) references usertbl (userID)
);