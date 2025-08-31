CREATE DATABASE assignment1;
USE assignment1;

/* 1.CREATE following tables. Use Appropriate datatypes. Insert given rows in the tables.
1)vehicle (note- discount values are in percentage)​
+------+---------------+--------+----------+--------+-------------------------------+
| vid  | vname         | price  | discount | milage | details                       |
+------+---------------+--------+----------+--------+-------------------------------+
|    1 | Activa        |  80000 |    10.00 |     35 | Two wheeler.Sturdy.milage30km |
|    2 | Santro        |  95000 |    20.00 |     20 | Product of Hyundai            |
|    3 | Yamaha        | 160000 |     5.00 |     70 | Sturdy and good milage        |
|    4 | i-10          | 300000 |     8.00 |     18 | Good small car                |
|    5 | WaganR        | 250000 |    10.00 |     25 | Good milage car               |
|    6 | Hero Splendor |  75000 |     9.00 |     65 | Best bike                     |
|    7 | Royal Enfield | 190000 |     5.00 |     40 | a royal bike                  |
+------+---------------+--------+----------+--------+-------------------------------+
2)customer
+--------+--------+----------+
| custid | cname  | location |
+--------+--------+----------+
|      1 | Nilima | Pimpri   |
|      2 | Ganesh | Pune     |
|      3 | Kishor | Kothrud  |
|      4 | Priya  | Aundh    |
+--------+--------+----------+
3)salesman
+------+----------+--------+------------+
| sid  | sname    | city   | experience |
+------+----------+--------+------------+
|   10 | Ramesh   | mumbai |          5 |
|   11 | Seema    | Pune   |          8 |
|   12 | Shailesh | Nagpur |          7 |
|   13 | Rakhi    | Pune   |          2 |
+------+----------+--------+------------+
*/

CREATE TABLE vehicle(vid INT, vname VARCHAR(32), price INT, discount FLOAT(5, 2), milage INT, details VARCHAR(32));

INSERT INTO vehicle VALUES
(1, "Activa", 80000, 10, 35, "Two wheeler.Sturdy.milage30km"),
(2, "Santro", 95000, 20, 20, "Product of Hyundai"),
(3, "Yamaha", 160000, 5, 70, "Sturdy and good milage"),
(4, "i-10", 300000, 8, 18, "Good small car"),
(5, "WaganR", 250000, 10, 25, "Good milage car"),
(6, "Hero Splendor", 75000, 9, 65, "Best bike"),
(7, "Royal Enfield", 190000, 5, 40, "a royal bike");


CREATE TABLE customer(custid INT, cname VARCHAR(32), location VARCHAR(32));

INSERT INTO customer VALUES
(1, "Nilima", "Pimpri"),
(2, "Ganesh", "Pune"),
(3, "Kishor", "Kothrud"),
(4, "Priya", "Aundh");


CREATE TABLE salesman(sid INT, sname VARCHAR(32), city VARCHAR(64), experience INT);

INSERT INTO salesman VALUES
(10, "Ramesh", "mumbai", 5),
(11, "Seema", "Pune", 8),
(12, "Shailesh", "Nagpur", 7),
(13, "Rakhi", "Pune", 2);
