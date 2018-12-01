set echo on
drop table course cascade constraints;
drop table student cascade constraints;
drop table section cascade constraints;
drop table takes cascade constraints;

CREATE TABLE COURSE
(NAME   CHAR(24),
COURSE# CHAR(10),
CREDIT  CHAR(6),
COLLEGE CHAR(20),
HRS   NUMBER(1));

CREATE TABLE STUDENT
(SID   VARCHAR2(7),
NAME	CHAR(14),
ADDRESS  CHAR(22),
BIRTHDATE DATE,
GRADELEVEL CHAR(2));

CREATE TABLE SECTION
(SECTION#   VARCHAR2(8),
TIME   CHAR(5),
MAXST	NUMBER(2),
ROOM   VARCHAR2(14));

CREATE TABLE TAKES
(GRADE   CHAR(5));
