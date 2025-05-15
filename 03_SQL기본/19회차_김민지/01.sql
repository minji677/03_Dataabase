SELECT * FROM titles;

SELECT first_name FROM employees;
SELECT first_name, last_name, gender FROM employees;

SELECT
    first_name AS '이름',
    gender AS '성별',
    hire_date AS '회사 입사일'
FROM
    employees
LIMIT 6;

