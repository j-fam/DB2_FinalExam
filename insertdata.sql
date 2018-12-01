spool e:\mis4386fall18\takehomequiz\spooleddata
set pagesize 130
set linesize 130

insert into course values ('Operations Research', '22QA375', 'U', 'Business', 2);
insert into course values ('Supply Chain Analysis', '22QA411', 'U', 'Business', 3);
insert into course values ('Scientific German', '22LF500', 'U', 'Arts and Sciences', 5);
insert into course values ('Nonparametric Statistics', '22QA434','', 'Engineering', 3);
insert into course values ('Principles of IS', '22IS270', 'G', 'Business', 3);
insert into course values ('Programming in C++', '20ECES212', 'G', 'Engineering', 3);
insert into course values ('Database Principles', '22IS478', 'U', 'Business', 3);
insert into course values ('Optimization', '22QA888', 'G', 'Business', 3);
insert into course values ('R Programming', '22QA161', 'G', 'Art and Sciences', 3);
insert into course values (null, '22QA356', 'G', 'Business', 3);
insert into course values ('Database Concepts', '22IS330', 'U', 'Business', 4);
insert into course values ('Business Analysis', '22IS270', 'U', 'Business', 4);
insert into course values ('Database Principles', '22IS832', 'G', 'Business', 3);
insert into course values ('MySQL Fundamentals', '22IS423', 'G', 'Business', 2);
insert into course values ('Database Principles', '22QA532', 'G', 'Arts and Sciences', 4);
insert into course values ('Architectural History', '05ARCH101', 'U', NULL, 3);
insert into course values ('Simulation Techniques', '22IS389', 'u', 'Arts and Sciences', 3);
select * from course;
insert into student values ('BE76598', 'Elijah Baley', '2920 Scioto Street',  '', 'JR');
insert into student values ('BG66765', 'Gladis Bale', '356 Vine Street', '23-OCT-1977', 'FR');
insert into student values ('VJ68923', 'Johnny Vu', '1411 Sage Road', '15-dec-1995', 'SR');
insert into student values ('FR45545', 'Rick Fox', '314 Clifton', '09-OCT-1983', 'GR');
insert into student values ('FV67733', 'Vanessa Fox', '314 Clifton', '20-OCT-1983', 'SO');
insert into student values ('HJ45633', 'Jenna Hopp', '2930 Scioto Street', '03-MAR-1970', 'SO');
insert into student values ('VL89234', 'Laina Voung', '35 Royalcrest Court', '10-FEB-1998', 'JR');
insert into student values ('PS32458', 'Steven Paez', '8411 Rivercreek Circle',null, null);
insert into student values ('CM43563', 'Megan Chau', '3456 Cullen Boulevard', '31-jul-1997', 'SR');
insert into student values ('DT87656', 'Tim Duncan', '',  '21-MAY-1975', 'SR');
insert into student values ('KJ56656', 'Joumana Kidd', '2920 Scioto Street',  '', 'FR');
insert into student values ('VL89234', 'Louis Vincent', '3509 Jassmine Circle', '', '');
insert into student values ('AJ76998', 'Jenny Aniston', '88 MLK', '', 'SR');
insert into student values ('GJ23145', 'Jeffrey Gong', '324 Park Place', '12-sep-1996', 'SR');
insert into student values ('KP78924', 'Poppy Kramer', '437 Love Lane', '11-NOV-1980', 'JR');
insert into student values ('KS39874', 'Sweety Kramer', '748 Hope Avenue',  '11-NOV-1980', 'JR');
insert into student values ('BA76234', 'Arpit Bajpai', '', '', '');
select * from student; 
insert into section values ('101A2014', 'T1015', 25, '', '22QA375');
insert into section values ('201S2013', 'T1045', 29, 'Lindner 110', '22IS330');
insert into section values ('103A2011', null, 23, 'Lindner 110', '22IS330');
insert into section values ('301S2013', 'H1045', 29, 'Lindner 110', '22IS330');
insert into section values ('401W2014', 'M1000', 33, 'Braunstien 211', '22IS832');
insert into section values ('102A2014', 'W1800', '', 'Baldwin 437', '20ECES212');
insert into section values ('101A2014', 'H1045', 23, 'Baldwin 423', '20ECES212');
insert into section values ('101A2015', 'W1800', null, null, '21ECES212');
insert into section values ('103U2014', 'T1015', 33, '', '22QA375');
insert into section values ('101A2018', 'M1300', 40, 'Umanath 117', '05ARCH101');
insert into section values ('105S2014', 'T1015', 30, NULL, '22QA375');
insert into section values ('106W2014', 'T1015', 20, NULL, '22QA375');
insert into section values ('201S2013', 'T1045', 16, 'Lindler 110', '22IS330');
insert into section values ('100W2014', 'T1100', 10, null, '22QA375');
select * from section;
insert into takes values ('101A2014',  'A', 'KP78924');
insert into takes values ('101A2014',  'A', 'KS39874');
insert into takes values ('101A2014',  'B', 'BG66765');
insert into takes values ('201S2013',  'C', 'BE76598');
insert into takes values ('102A2015',  'A', 'BA76234');
insert into takes values ('103U2014',  'D', 'DT87656');
insert into takes values ('102A2014',  'B', 'KJ56656');
insert into takes values ('101A2014',  'A', 'AJ76998');
insert into takes values ('103U2014',  'A', 'KS39874');
insert into takes values ('401W2014',  'A', 'KS39874');
insert into takes values ('106W2014',  '',  'VJ68923');
insert into takes values ('201S2013',  'B', 'FR23234');
insert into takes values ('105S2014',  'A', 'BE76598');
insert into takes values ('101A2014',  'C', 'KS39874');
insert into takes values ('401W2014',  'B', 'BG66765');
insert into takes values ('102A2014',  'B', 'BG66765');
select * from takes;
set pagesize 130
desc course
select * from course;
desc student
select * from student;
desc section
select * from section;
desc takes
select * from takes;
delete from course where course# = '20ECES212';
delete from student where sid = 'KS39874';
delete from section where section# = '301S2013';
delete from section where section# = '101A2014';
desc course
select * from course;
desc student
select * from student;
desc section
select * from section;
desc takes
select * from takes;
commit;
spool off






