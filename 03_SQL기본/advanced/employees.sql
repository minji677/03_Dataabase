-- employees db에서 각 부서별 관리자를 출력하세요.
-- o, 단 현재 재직자만 출력한다.
select *
from dept_manager -- 부서별 관리자 tb
where to_date = '9999-01-01';
-- 재직자

-- 부서번호 d005부서의 현재 관리자 정보를 출력하세요.
select *
from dept_manager -- 부서별 관리자 tb
where to_date = '9999-01-01' -- 재직자
  and dept_no = 'd005'
-- d005 부서

/*
 subqueries
 -- 서브쿼리는 다른 쿼리에서도 실행되는 쿼리
 -- 테이블 내에서 존재하지 않는 조건에 근거한 값들을 검색할 때 사용
 */
-- 조건 1. 재직 중이고 부서번호가 d005인 부서의 관리자
-- 조건 2. 관리자의 정보
-- 출력 -> 관리자 정보
select *
from employees
where emp_no = (select emp_no
                from dept_manager -- 부서별 관리자 tb
                where to_date = '9999-01-01' -- 재직자
                  and dept_no = 'd005' -- d005 부서
);
/*
 CTE (Common Table Expression)
 - 서브쿼리와 같은 개념으로 코드의 가독성과 재사용을 위해
   임시결과 테이블을 선언
 */
WITH current_manager as (select emp_no
                         from dept_manager -- 부서별 관리자 tb
                         where to_date = '9999-01-01' -- 재직자
                           and dept_no = 'd005')
select *
from employees
where emp_no = (select emp_no from current_manager);
/*
 employees테이블에서 페이지 네이션으로 페이지를 추출하려고 한다
 다음 조건 하에서 8번 페이지의 데이터를 출력하세요
 입사일을 내림차순으로 정렬
 한 페이지 당 20명의정보를 출력
 */
 select *
 from employees
 order by hire_date desc
 limit 140,20; -- offset, amount

 /*
  employees db에서 재직자의 총 수를 구하시오
  재직자의 to_date 값은 9999-01-01로 저장되어 있음
  */
select count(*)
from  dept_emp
where to_date = '9999-01-01';

-- employees db에서 재직자의 평균 급여를 출력하시오
select avg(salary)
from salaries
where to_date = '9999-01-01';

-- 재직자 전체 평균 급여보다 급여를 더 많이 받는 재직자를 출력하세요.
-- 조건1. "재직자" -> 9999-01-01
-- 조건2. 전체 재직자의 평균 급여보다 많이 받는 재직자
-- 출력: 재직자 정보

select *
from salaries
where to_date = '9999-01-01'
    and salary > (select avg(salary)
                  from salaries
                  where to_date = '9999-01-01')

-- employees db에서 각 부서별 재직자의 수를 구하시오
-- 부서 번호로 구분하고 부서 번호로 오름차순 정렬하여 출력
select dept_no, count(*)
from dept_emp
where to_date = '9999-01-01'
group by dept_no
order by dept_no asc;

/*
 all: 서브쿼리 결과 모든 값과 비교
 any/ some : 서브쿼리 결과가 하나로도 만족하면 참
 */
 -- 급여가 재직자 모두의 평균보다 크면 출력
select *
from salaries
where to_date = '9999-01-01'
  and salary > all (select avg(salary)
                from salaries
                where to_date = '9999-01-01');

select *
from salaries
where to_date = '9999-01-01'
  and salary > any (select min(salary)
                    from salaries
                    where to_date = '9999-01-01');

