-- select
-- 특정 테이블에서 원하는 데이터를 조회 할 수있다

select -- 조회해줘
    * -- 모든 컬럼을
from -- buytbl에서
    buytbl;

select
    userID,
    groupName
from buytbl;

select (5 + 5);

select now(); -- 현재 시간 출력
-- 컬럼에 별칭 사용
select concat('bear', '안녕', 'kb') as '인 사';

-- usertbl의 name, mobile1, mobile2 를 출력
-- mobile1, mobile2는 붙여서 전화번호라는 컬럼으로 조회되어야 함

select
    name,
    concat(usertbl.mobile1, usertbl.mobile2) as 전화번호
from usertbl