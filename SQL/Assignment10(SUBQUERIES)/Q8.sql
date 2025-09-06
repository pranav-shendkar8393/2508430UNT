/* 8. Create the following table and solve the queries.
Category
+-----+-------------+-------------------------+
| cid | cname       | description             |
+-----+-------------+-------------------------+
|   1 | chips       | very crunchy            |
|   2 | chocolate   | very chocolaty          |
|   3 | snacks      | yummy                   |
|   4 | cold drinks | thanda thanda cool cool |
+-----+-------------+-------------------------+
Salesman
+-----+--------+---------+
| sid | sname  | city    |
+-----+--------+---------+
|  11 | Rahul  | Pune    |
|  12 | Kirti  | Mumbai  |
|  13 | Prasad | Nashik  |
|  14 | Arnav  | Amravti |
+-----+--------+---------+
Product
+-----+-------------+-------+------+------+------+
| pid | pname       | price | qty  | cid  | sid  |
+-----+-------------+-------+------+------+------+
| 111 | pepsi       | 40.00 |   50 |    4 |   11 |
| 123 | lays        | 30.00 |   30 |    1 |   12 |
| 124 | dairy milk  | 40.00 |   60 |    2 |   14 |
| 125 | pringles    | 40.00 |   60 |    1 |   14 |
| 134 | nachos      | 50.00 |   50 |    1 |   12 |
| 167 | eraser      | 90.00 |    5 | NULL | NULL |
| 213 | sketch pens | 56.00 |  150 | NULL |   11 |
+-----+-------------+-------+------+------+------+

-list all pid, pname, cid, cname with category chips.
+-----+----------+------+
| pid | pname    | cid  |
+-----+----------+------+
| 123 | lays     |    1 |
| 125 | pringles |    1 |
| 134 | nachos   |    1 |
+-----+----------+------+
-Display all the salesmans who did not sale any products.
+--------+
| sname  |
+--------+
| Prasad |
+--------+
-Display all categories for which no product is assigned.
+-----+--------+-------------+
| cid | cname  | description |
+-----+--------+-------------+
|   3 | snacks | yummy       |
+-----+--------+-------------+
-List all the salesman who stays in city where name starts with
P or N.
+-----+--------+--------+
| sid | sname  | city   |
+-----+--------+--------+
|  11 | Rahul  | Pune   |
|  13 | Prasad | Nashik |
+-----+--------+--------+
Add new column in salesman table by name credit limit.
+-----+--------+---------+--------------+
| sid | sname  | city    | credit_limit |
+-----+--------+---------+--------------+
|  11 | Rahul  | Pune    |         NULL |
|  12 | Kirti  | Mumbai  |         NULL |
|  13 | Prasad | Nashik  |         NULL |
|  14 | Arnav  | Amravti |         NULL |
+-----+--------+---------+--------------+
Write a query which will Display deptno and dept names to which no employee is assigned
use dept and emp table.
+--------+------------+
| deptno | dname      |
+--------+------------+
|     40 | OPERATIONS |
+--------+------------+
*/
CREATE TABLE category(
    cid INT,
    cname VARCHAR(15) UNIQUE NOT NULL,
    description VARCHAR(30),
    CONSTRAINT pk_cid PRIMARY KEY(cid)
);

INSERT INTO category VALUES
    (1, 'chips', 'very crunchy'),
    (2, 'chocolate', 'very chocolaty'),
    (3, 'snacks', 'yummy'),
    (4, 'cold drinks', 'thanda thanda cool cool')
;

CREATE TABLE salesman(
    sid INT,
    sname VARCHAR(15) UNIQUE NOT NULL,
    city VARCHAR(15),
    CONSTRAINT pk_sid PRIMARY KEY(sid)
);


CREATE TABLE product(
    pid INT,
    pname VARCHAR(20),
    qty INT CHECK(qty > 0),
    price FLOAT(6, 2) DEFAULT 20.00,
    cid INT,
    sid INT,
    CONSTRAINT pk_pid PRIMARY KEY(pid),
    CONSTRAINT fk_cid FOREIGN KEY(cid)
    REFERENCES category(cid) ON DELETE SET NULL,
    CONSTRAINT fk_sid FOREIGN KEY(sid)
    REFERENCES salesman(sid)
);


INSERT INTO salesman VALUES
    (11, 'Rahul', 'Pune'),
    (12, 'Kirti', 'Mumbai'),
    (13, 'Prasad', 'Nashik'),
    (14, 'Arnav', 'Amravti')
;

INSERT INTO product VALUES
    (123, 'lays', 30, 30.00, 1, 12),
    (111, 'pepsi', 40, 50.00, 4, 11),
    (134, 'nachos', 50, 50.00, 1, 12),
    (124, 'dairy milk', 40, 60.00, 2, 14),
    (125, 'pringles', 40, 60.00, 1, 14),
    (213, 'sketch pens', 56, 150.00, NULL, 11),
    (167, 'eraser', 90, 5.00, NULL, NULL)
;


SELECT pid, pname, cid FROM product
WHERE cid = (
    SELECT cid FROM category
    WHERE cname = 'chips'
);

SELECT sname FROM salesman
WHERE sid NOT IN (
    SELECT sid FROM product
    WHERE sid IS NOT NULL
);

SELECT * FROM category
WHERE cid NOT IN (
    SELECT cid FROM product
    WHERE cid IS NOT NULL
);


SELECT * FROM salesman
WHERE city LIKE 'P%' OR city LIKE 'N%';

SELECT * FROM salesman
WHERE REGEXP_LIKE(city, '^[PN].*');

ALTER TABLE salesman
ADD credit_limit INT;

SELECT deptno, dname FROM dept
WHERE deptno NOT IN (
    SELECT deptno FROM emp
);
