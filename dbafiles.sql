drop table free_space cascade constraints;
drop table data_files cascade constraints;
create table free_space (tablespace_name varchar2(30) not null,
block_id number not null,
bytes number,
blocks number not null);
insert into free_space values ('SYSTEM', 10082, 325000, 159);
insert into free_space values ('SYSTEM', 8710, 245000, 120);
insert into free_space values ('SYSTEM', 6790, 81000, 40);
insert into free_space values ('SYSTEM', 8480, 409600, 200);
insert into free_space values ('SYSTEM', 8180, 409600, 100);
insert into free_space values ('SYSTEM', 8930, 204800, 100);
insert into free_space values ('SYSTEM', 6580, 204800, 100);
insert into free_space values ('USER_DATA', 1395, 290000, 142);
insert into free_space values ('ROLLBACK_DATA', 987, 3223000, 1574);
insert into free_space values ('TEMPORARY_DATA', 2, 2095000, 1023);
insert into free_space values ('MIS4386', 37, 438000, 214);
create table data_files (tablespace_name varchar2(30) not null,
bytes number, 
blocks number not null);
insert into data_files values ('USER_DATA', 3145000, 1536);
insert into data_files values ('ROLLBACK_DATA', 5242000, 2560);
insert into data_files values ('TEMPORARY_DATA', 2097000, 1024);
insert into data_files values ('SYSTEM', 20971000, 10200);
insert into data_files values ('MIS4386', 512000, 250);
describe free_space
select * from free_space;
describe data_files
select * from data_files;
commit;
