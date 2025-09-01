/* 1. Consider already created employee table with schema is employee(eno, ename, basic, incentive)
Add column job in the above table.
job designation of an employee and it is VARCHAR(12).
+------+--------+-------+------------+------+
| eno  | ename  | basic | incentives | job  |
+------+--------+-------+------------+------+
|    1 | Rajesh | 20000 |       1500 | NULL |
|    2 | Sarita | 25000 |       1000 | NULL |
|    3 | Meera  | 15000 |       3000 | NULL |
|    4 | Jitesh | 30000 |        500 | NULL |
|    5 | Ramesh | 12000 |       3000 | NULL |
|   20 | Ajay   | 16000 |       NULL | NULL |
+------+--------+-------+------------+------+
*/
ALTER TABLE employee
ADD job VARCHAR(12);
