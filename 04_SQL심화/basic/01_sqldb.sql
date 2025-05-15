/*
 join
 -두 개 이상의 테이블을 관련있는 컬럼을 통해서 결합하는데 사용
 - 반드시 연관있는 컬럼이 존재해야 함
 */

 /*
 sqldb 데이터베이스에서 다음 조건을 처리하세요
 - 사용자별로 구매이력 출력
 모든 컬럼을 출력함
 구매 이력이 없는 정보는 출력 안함
 앞의 결과에서 userid가 jyp인 데이터만 출력함
  */
select
    *
from buytbl b
    inner join usertbl u
    -- join usertbl u -- inner생략가능
    on b.userID = u.userID
   -- using (userID)
   -- using: 컬럼명이 같을 경우 컬럼에 대한 조건을 작성해서 조인 가능
where b.userID = 'JYP'

/*
 sqldb데이터베이스에서 다음 조건을 처리
 각 사용자 별로 구매 이력을 출력하세요
 userid, name, prodname, addr, 연락처를 다음과 같이 출력함
 연결 컬럼은 userid로 함
 결과를 userid를 기준으로 오름차순으로 정렬
 구매이력이 없는 사용자도 출력하세요
 */
 select u.userID, u.name, prodName, U.addr, concat(u.mobile1, u.mobile2)
 from usertbl u
     left outer join buytbl b
        on u.userID = b.userID
 order by u.userID;

-- sqldb의 사용자를 모두 조회하되 전화가 없는 사람은 제외하고 출력
select *
from usertbl
where name in (
    -- 유저 중에 휴대폰 번호가 없는 사람(null인 사람)
    select name
    from usertbl
    where mobile1 is null
    );
/*
union (합집합)
-- 두 쿼리의 결과를 하나의 결과로 합치는 것
-- 중복된 행이 결과에 포함 안됨
union all (합집합 + 교집합)
-- 중복된 행이 결과에 포함됨
 */
 select
     name,
     addr,
     mobile1
 from usertbl
 where
     addr = '서울'

union all

 select
     name,
     addr,
     mobile1
 from
     usertbl
 where
     mobile1 = '011';


