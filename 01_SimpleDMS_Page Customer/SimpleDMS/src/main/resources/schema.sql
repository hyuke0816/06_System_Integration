-- Table , 시퀀스 등 구조 정의
DROP SEQUENCE SQ_DEPT;
CREATE SEQUENCE SQ_DEPT START WITH 50 INCREMENT BY 10;

DROP SEQUENCE SQ_EMP;
CREATE SEQUENCE SQ_EMP START WITH 8000 INCREMENT BY 1;

DROP SEQUENCE SQ_FAQ;
CREATE SEQUENCE SQ_FAQ START WITH 1 INCREMENT BY 1;

DROP SEQUENCE SQ_CUSTOMER;
CREATE SEQUENCE SQ_CUSTOMER START WITH 1 INCREMENT BY 1;

DROP SEQUENCE SQ_QNA;
CREATE SEQUENCE SQ_QNA START WITH 1 INCREMENT BY 1;

DROP SEQUENCE SQ_FILE;
CREATE SEQUENCE SQ_FILE START WITH 1 INCREMENT BY 1;

DROP SEQUENCE SQ_GALLERY;
CREATE SEQUENCE SQ_GALLERY START WITH 1 INCREMENT BY 1;

DROP TABLE TB_EMP CASCADE CONSTRAINT;
DROP TABLE TB_DEPT CASCADE CONSTRAINT;
DROP TABLE TB_FAQ CASCADE CONSTRAINT;
DROP TABLE TB_CUSTOMER CASCADE CONSTRAINT;
DROP TABLE TB_QNA CASCADE CONSTRAINT;

DROP TABLE TB_FILE CASCADE CONSTRAINT;
DROP TABLE TB_GALLERY CASCADE CONSTRAINT;

CREATE TABLE TB_DEPT
(
    DNO         NUMBER NOT NULL PRIMARY KEY,
    DNAME       VARCHAR2(255),
    LOC         VARCHAR2(255),
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME VARCHAR2(255),
    UPDATE_TIME VARCHAR2(255),
    DELETE_TIME VARCHAR2(255)
);

CREATE TABLE TB_EMP
(
    ENO         NUMBER NOT NULL PRIMARY KEY,
    ENAME       VARCHAR2(255),
    JOB         VARCHAR2(255),
    MANAGER     NUMBER,
    HIREDATE    VARCHAR2(255),
    SALARY      NUMBER,
    COMMISSION  NUMBER,
    DNO         NUMBER,
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME VARCHAR2(255),
    UPDATE_TIME VARCHAR2(255),
    DELETE_TIME VARCHAR2(255)
);

CREATE TABLE TB_FAQ
(
    NO          NUMBER NOT NULL PRIMARY KEY,
    TITLE       VARCHAR2(255),
    CONTENT     VARCHAR2(255),
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME VARCHAR2(255),
    UPDATE_TIME VARCHAR2(255),
    DELETE_TIME VARCHAR2(255)
);

CREATE TABLE TB_CUSTOMER
(
    CID         NUMBER NOT NULL PRIMARY KEY,
    FIRST_NAME  VARCHAR2(255),
    LAST_NAME   VARCHAR2(255),
    EMAIL       VARCHAR2(255),
    PHONE       VARCHAR2(255),
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME VARCHAR2(255),
    UPDATE_TIME VARCHAR2(255),
    DELETE_TIME VARCHAR2(255)
);


CREATE TABLE TB_QNA
(
    QNO         NUMBER NOT NULL PRIMARY KEY,
    QUESTION    VARCHAR2(255),
    ANSWER      VARCHAR2(255),
    QUESTIONER  VARCHAR2(255),
    ANSWERER    VARCHAR2(255),
    DELETE_YN   VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME VARCHAR2(255),
    UPDATE_TIME VARCHAR2(255),
    DELETE_TIME VARCHAR2(255)
);

-- Upload Table
CREATE TABLE TB_FILE
(
    FID          NUMBER NOT NULL PRIMARY KEY,
    FILE_TITLE   VARCHAR2(1000),
    FILE_CONTENT VARCHAR2(1000),
    FILE_NAME    VARCHAR2(1000),
    FILE_TYPE    VARCHAR2(1000),
--     CLOB : 4000 BYTE 보다 큰 문자열일때 사용하는 자료형 👉 BYTE형은 최대가 4000BYTE
--     BLOB : 이미지, 동영상 등을 저장하는 자료형 ( 2진파일 ( binary file) )
    FILE_DATA    BLOB,
    DELETE_YN    VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME  VARCHAR2(255),
    UPDATE_TIME  VARCHAR2(255),
    DELETE_TIME  VARCHAR2(255)
);

-- Upload Gallery Table
CREATE TABLE TB_GALLERY
(
    GID                  NUMBER NOT NULL PRIMARY KEY,
    GALLERY_TITLE        VARCHAR2(1000),
    GALLERY_FILE_NAME    VARCHAR2(1000),
    GALLERY_TYPE         VARCHAR2(1000),
    GALLERY_DATA         BLOB,
    DELETE_YN            VARCHAR2(1) DEFAULT 'N',
    INSERT_TIME          VARCHAR2(255),
    UPDATE_TIME          VARCHAR2(255),
    DELETE_TIME          VARCHAR2(255)
);