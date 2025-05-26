use tabledb;

create view v_userbuytbl as
select u.userID,
       u.name,
       u.addr,
       concat(u.mobile1, u.mobile2) as "연락처"

from
    usertbl u join buytbl b
    on u.userID = b.userID;

select * from v_userbuytbl
where name = '김범수';









