
use tabledb;
drop table if exists buytbl;
drop table if exists usertbl;

create table usertbl (
    userID char(8) not null,
    name varchar(10) not null ,
    birthyear int not null,

    constraint primary key PK_userTBL_userID(userID)
);

create table prodTbl(
    prodCode char(3) not null,
    prodID char(4) not null,
    prodDate DATETIME not null,
    prodCur char(10) not null,

    constraint primary key PK_prodTbl_prodCode_prodId(prodCode, ProdID)
);