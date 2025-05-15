SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    t.title
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.to_date = '9999-01-01';

-- 현재 재직 중인 직원 정보를 출력하세요
SELECT
    e.emp_no,
    e.birth_date,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    t.title,
    s.salary
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no AND t.to_date = '9999-01-01'
        JOIN
    salaries s ON e.emp_no = s.emp_no AND s.to_date = '9999-01-01';

-- 현재 재직중인 직원의 정보를 출력하세요
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
WHERE
    de.to_date = '9999-01-01'
ORDER BY
    e.emp_no ASC;

-- 현재 재직중인 직원의 정보를 출력하세요.
SELECT
    d.dept_no,
    d.dept_name,
    COUNT(*) AS count
FROM
    dept_emp de
        JOIN
    departments d ON de.dept_no = d.dept_no
WHERE
    de.to_date = '9999-01-01'
GROUP BY
    d.dept_no, d.dept_name
ORDER BY
    d.dept_no ASC;

-- 직원 번호가 10209인 직원의 부서 이동 히스토리를 출력하세요.
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_name,
    de.from_date,
    de.to_date
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
        JOIN
    departments d ON de.dept_no = d.dept_no
WHERE
    e.emp_no = 10209;



