use tabledb;

insert into usertbl
values ('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8'),
        ('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4'),
        ('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');

/* insert into
    usertbl
values
    ('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
 */

insert into buytbl(userID, prodName, groupName, price, amount)
values ('KBS', '운동화', NULL, 30, 2);

insert into buytbl(userID, prodName, groupName, price, amount)
values ('KBS', '노트북', '전자', 1000, 1);

-- userid 가 외래키이므로 usertbl에 jyp에 해당하는데이터가있어야함
# insert into buytbl(userID, prodName, groupName, price, amout)
# values ('JYP', '모니터', '전자', 200, 1);

# delete
# from buytbl
# where prodName = '노트북';
