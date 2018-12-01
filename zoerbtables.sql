DROP TABLE CONSULTANT CASCADE CONSTRAINTS;
CREATE TABLE CONSULTANT (C_ID NUMBER(3) NOT NULL, CNAME VARCHAR2(18), C_ADD VARCHAR2(22));
INSERT INTO CONSULTANT VALUES (100, 'Peng, David', '1383 Alexander Ave.');
INSERT INTO CONSULTANT VALUES (101, 'Ives, Blake', '3227 Brian Street');
INSERT INTO CONSULTANT VALUES (102, 'Gilmer, William', '2227 Calumet Place');
INSERT INTO CONSULTANT VALUES (103, 'Porra, Jaana', '1334 Water Street');
INSERT INTO CONSULTANT VALUES (104, 'Silva, Leiser', '1911 Pine Drive');
INSERT INTO CONSULTANT VALUES (105, 'Parks, Michael', '2333 157th Street');
drop table project cascade constraints;
create table project (p_id number(6) not null, project_name varchar2(30),
client_id number(6), mgr_id number(6), parent_p_id number(6));
insert into project values (1, 'Hardware Support Intranet', 2, 105, null);
insert into project values (2, 'Hardware Support Interface', 2, 103, 1);
insert into project values (3, 'Hardware Support Database', 2, 102, 1);
insert into project values (4, 'Teller Support System', 4, 105, null);
insert into project values (5, 'Internet Advertising', 6, 105, null);
insert into project values (6, 'Network Design', 6, 104, 5);
insert into project values (7, 'Exploration Database', 5, 102, null);
drop table project_consultant cascade constraints;
create table project_consultant (p_id number(6) not null, c_id number(6) not null, total_hours number(6));
insert into project_consultant values (1, 101, 215);
insert into project_consultant values (1, 104, 245);
insert into project_consultant values (1, 103, 50);
insert into project_consultant values (1, 105, 45);
insert into project_consultant values (2, 105, 25);
insert into project_consultant values (2, 100, 0);
insert into project_consultant values (3, 103, 125);
insert into project_consultant values (3, 104, 50);
insert into project_consultant values (4, 105, 25);
insert into project_consultant values (4, 104, 125);
insert into project_consultant values (4, 102, 30);
insert into project_consultant values (5, 105, 15);
insert into project_consultant values (5, 103, 15);
insert into project_consultant values (6, 103, 5);
insert into project_consultant values (6, 104, 10);
insert into project_consultant values (7, 102, 125);
insert into project_consultant values (7, 100, 100);
commit;
desc consultant
select * from consultant;
desc project
select * from project;
desc project_consultant
select * from project_consultant;



