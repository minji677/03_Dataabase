/*
 DML (data manipulation language)
 --데이터 조작언어, 테이블에 값을 삽입 수정 삭제하는 sql
 */

 /*
  insert
  - 새로운 행을 추가하는 구문
  - null 허용 가능한 컬럼이나 auto increment가 있는 컬럼 제외하고
    insert하고 싶은 데이터 컬럼을 지정해서 insert가능

  - primary key:기본키 유일성과 최소성울 만족, 해당 행을 식별할 때 사용하는 값
  */

insert into
    employees
values
    (1, 20250414, '태근', '박', 'M', 20250514);

 -- 컬럼을 명시하면 insert 시 데이터의 순서 변경이 가능
insert into
    employees(emp_no, birth_date, last_name, first_name, gender, hire_date)
values
    (2, 20250414, '가연', '옥', 'F', 20250514);

-- 여러 컬럼을 한번에 insert
insert into
    employees
values
    (3, 20250414, '김', '규연', 'F', 20250514),
    (4, 20250414, '구', '석현', 'F', 20250514)

-- update
-- 테이블에 기록된 칼럼의 값을 수정하는 구분

select
    *
from
    employees
where last_name = '규연';

update employees -- employees테이블을 업뎃할거다
set -- 이렇게 바꿀거다
    last_name = '김',
    first_name = '규연'
where -- 여기에 해당되는 애만
    last_name = '규연';

update employees -- employees테이블을 업뎃할거다
set -- 이렇게 바꿀거다
    last_name = '구',
    first_name = '석현'
where -- 여기에 해당되는 애만
      last_name = '석현';

update employees -- employees테이블을 업뎃할거다
set -- 이렇게 바꿀거다
    last_name = '옥',
    first_name = '가연'
where -- 여기에 해당되는 애만
      last_name = '가연';

-- delete
-- 테이블의 행을 삭제하는 구문
delete
from employees
where last_name = '김';


-- replace
-- insert할 때 primaey key 혹은 unique key가 충돌되 경우 해당 행에 덮어 씌우기
replace into
    employees
values
    (4, 20250414, '구', '석', 'F', 20250514)
