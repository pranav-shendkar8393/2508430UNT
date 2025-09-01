/* 2.consider already created table with schema is employee(eno, ename, basic, incentives).
Ramesh is promoted as Head CLerk.
Assign him new job in the table.
+------+--------+-------+------------+------------+
| eno  | ename  | basic | incentives | job        |
+------+--------+-------+------------+------------+
|    1 | Rajesh | 20000 |       1500 | NULL       |
|    2 | Sarita | 25000 |       1000 | NULL       |
|    3 | Meera  | 15000 |       3000 | NULL       |
|    4 | Jitesh | 30000 |        500 | NULL       |
|    5 | Ramesh | 12000 |       3000 | Head Clerk |
|   20 | Ajay   | 16000 |       NULL | NULL       |
+------+--------+-------+------------+------------+
*/
UPDATE employee
SET job = 'Head Clerk'
WHERE ename = 'Ramesh';
