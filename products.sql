drop table products cascade constraints;
CREATE TABLE products (
  product_id INTEGER
    CONSTRAINT products_pk PRIMARY KEY,
  product_type_id INTEGER,
  name VARCHAR2(20) NOT NULL,
  description VARCHAR2(40),
  price NUMBER(5, 2)
);
INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  1, 1, 'Modern Science', 'A description of modern science', 19.95
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  2, 1, 'Chemistry', 'Introduction to Chemistry', 30.00
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  3, 2, 'Supernova', 'A star explodes', 25.99
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  4, 2, 'Tank War', 'Action movie about a future war', 13.95
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  5, 2, 'Z Files', 'Series on mysterious activities', 49.99
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  6, 2, '2412: The Return', 'Aliens return', 14.95
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
)
VALUES (
  7, 3, 'Space Force 9', 'Adventures of heroes', 13.49
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  8, 3, 'From Another Planet', 'Alien from another planet lands on Earth', 12.99
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  9, 4, 'Classical Music', 'The best classical music', 10.99
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  10, 4, 'Pop 3', 'The best popular music', 15.99
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  11, 4, 'Creative Yell', 'Debut album', 14.99
);

INSERT INTO products (
  product_id, product_type_id, name, description, price
) VALUES (
  12, NULL, 'My Front Line', 'Their greatest hits', 13.49
);

-- commit the transaction
COMMIT;
describe products
select * from products;
drop table product_price_audit cascade constraints;
create table product_price_audit (
product_id number(38), old_price number(5,2), new_price number(5,2), descrip varchar2(50), time varchar2(30));
desc product_price_audit
select * from product_price_audit;
drop table deletion_log cascade constraints;
create table deletion_log (field1 number, field2 varchar2(30), field3 varchar2(30));
desc deletion_log;
select * from deletion_log;
commit;


