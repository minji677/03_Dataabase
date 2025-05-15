/*
 distinct
 - 중복 값을 제거하는데 사용
 - null도 하나의 종류
 */
select
    distinct addr
from usertbl;

/*
 limit
 - select 문의 결과 집합에서 반환할 행의 수를 제한

 select
    컬럼명
 from
    테이블명
 limit [offset], [rowCount]

 offset :시작할 행의 번호
 row_count :이후 행에서 반환할 행의 갯수
 */
