DROP TABLE IF EXISTS buyTBL;
DROP TABLE IF EXISTS userTBL;

CREATE TABLE userTBL (
                         userID CHAR(8) NOT NULL PRIMARY KEY,
                         name VARCHAR(10) NOT NULL,
                         birthyear INT NOT NULL
);

CREATE TABLE buyTBL (
    num int not null auto_increment primary key,
    userID char(8) not null,
    prodName char(6) not null
);

ALTER TABLE buyTBL
    ADD CONSTRAINT fk_userID
        FOREIGN KEY (userID)
            REFERENCES userTBL(userID);
