-- usertbl 테이블에서 이름이 '김경호'인 행을 출력하세요.
SELECT *
FROM usertbl
WHERE name = '김경호';

-- usertbl 테이블에서 생년이 1970 이상이고 키가 182이상인 데이터를 출력하세요.
SELECT *
FROM usertbl
WHERE birthYear >= 1970
  AND height >= 182;

-- usertbl 테이블에서 키가 180~183 범위인 데이터를 출력하세요.
SELECT *
FROM usertbl
WHERE height BETWEEN 180 AND 183;

-- usertbl 테이블에서 주소가 '경남' 또는 '전남' 또는 '경북'인 데이터를 출력하세요.
SELECT *
FROM usertbl
WHERE addr IN ('경남', '전남', '경북');

-- usertbl 테이블에서 이름이 '김'으로 시작하는 데이터를 출력하세요.
SELECT *
FROM usertbl
WHERE name LIKE '김%';

-- usertbl에서 김경호 보다 큰 사람들의 이름과 키를 출력하세요.
SELECT name, height
FROM usertbl
WHERE height > (
    SELECT height
    FROM usertbl
    WHERE name = '김경호'
);

-- usertbl을 mdata의 오름 차순으로 정렬하여 출력하세요.
SELECT *
FROM usertbl
ORDER BY mDate ASC;

-- usertbl을 mdata의 내림 차순으로 정렬하여 출력하세요.
SELECT *
FROM usertbl
ORDER BY mDate DESC;

-- usertbl을 height의 내림차순으로 정렬하고, 동률인 경우 name의 내림차순으로 정렬하여 출력하세요.
SELECT *
FROM usertbl
ORDER BY height DESC, name DESC;

-- usertbl의 주소지를 중복없이 오름 차순으로 출력하세요.
SELECT DISTINCT addr
FROM usertbl
ORDER BY addr ASC;