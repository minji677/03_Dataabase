DROP TABLE IF EXISTS buyTBL;
DROP TABLE IF EXISTS userTBL;

CREATE TABLE userTBL (
                         userID CHAR(8) NOT NULL PRIMARY KEY,         -- 고정문자(8), 필수, 기본키
                         name VARCHAR(10) NOT NULL,                   -- 가변문자(10), 필수
                         birthyear INT NOT NULL,                      -- 정수, 필수
                         email CHAR(30) UNIQUE                        -- 고정문자(30), 옵션(입력 안 해도 됨), 중복불가
);
