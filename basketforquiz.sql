
DROP TABLE basketitem CASCADE CONSTRAINTS;
CREATE TABLE basketItem (
	idBasketItem number(2),
	idProduct number(2),
	Price number(6,2),
	Quantity number(2),
	idBasket number(5) ,
	shipping_cost number(2),
	option2 number(2));
insert into basketitem
      values (15, 6, 5.00, 1, 3, 1, 4);
insert into basketitem
      values (16, 8, 10.80, 2, 3, 2, 4);
insert into basketitem
      values (17, 4, 28.50, 1, 4, NULL, NULL);
insert into basketitem
      values (18, 7, 10.80, 1, 5, 2, 3);
insert into basketitem
      values (19, 8, 10.80, 1, 5, 2, 3);
insert into basketitem
      values (20, 9, 10.00, 1, 5, 2, 3);
insert into basketitem
      values (21, 10, 10.00, 1, 5, 2, 3);
insert into basketitem
      values (22, 10, 10.00, 2, 6, 2, 4);
insert into basketitem
      values (23, 2, 129.99, 1, 6, NULL, NULL);
insert into basketitem
      values (24, 7, 10.80, 1, 7, 2, 3);
insert into basketitem
      values (25, 8, 10.80, 1, 7, 2, 3);
insert into basketitem
      values (26, 7, 10.80, 1, 8, 2, 3);
insert into basketitem
      values (27, 8, 10.80, 1, 8, 2, 3);
insert into basketitem
      values (28, 7, 10.80, 1, 9, 2, 3);
insert into basketitem
      values (29, 8, 10.80, 1, 9, 2, 3);
insert into basketitem
      values (30, 6, 5.00,  1, 10, 1, 3);
insert into basketitem
      values (31, 8, 5.40,  1, 10, 1, 3);
insert into basketitem
      values (32, 4, 28.50, 1, 10, NULL, NULL);
insert into basketitem
      values (33, 9, 10.00, 1, 11, 2, 3);
insert into basketitem
      values (34, 8, 10.80, 2, 12, 2, 3);
insert into basketitem
      values (35, 9, 10.00, 2, 12, 2, 3);
insert into basketitem
      values (36, 6, 10.00, 2, 12, 2, 3);
insert into basketitem
      values (37, 7, 10.80, 1, 12, 2, 3);
insert into basketitem
      values (38, 9, 10.00, 2, 13, 2, 3);
select * from basketitem;
drop table procedure_results cascade constraints;
create table procedure_results (co11 number(2), col2 number(2), col3 number(7,2),
col4 number(2), col5 number(7,2));
desc procedure_results
select * from procedure_results;
commit;

