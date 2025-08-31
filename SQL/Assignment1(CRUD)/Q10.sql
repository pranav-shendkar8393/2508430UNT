/*
10.For the given schema create the table and solve the following queries
employee(eno, ename, basic, incentives)
+------+--------+-------+------------+
| eno  | ename  | basic | incentives |​
+------+--------+-------+------------+
|    1 | Rajesh | 20000 |       1500 |
|    2 | Sarita | 25000 |       1000 |
|    3 | Meera  | 15000 |       3000 |
|    4 | Jitesh | 30000 |        500 |
|    5 | Ramesh | 12000 |       3000 |
+------+--------+-------+------------+
list all employees having basic > 15000.
+------+--------+-------+------------+
| eno  | ename  | basic | incentives |
+------+--------+-------+------------+
|    1 | Rajesh | 20000 |       1500 |
|    2 | Sarita | 25000 |       1000 |
|    4 | Jitesh | 30000 |        500 |
+------+--------+-------+------------+
*/

CREATE TABLE employee(eno INT, ename VARCHAR(64), basic INT, incentives INT);
INSERT INTO employee VALUES
(1, "Rajesh", 20000, 1500),
(2, "Sarita", 25000, 1000),
(3, "Meera", 15000, 3000),
(4, "Jitesh", 30000, 500),
(5, "Ramesh", 12000, 3000);
