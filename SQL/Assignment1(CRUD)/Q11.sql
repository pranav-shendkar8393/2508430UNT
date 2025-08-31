/*
11.Increase the salary of all employees earning less than 20000 basic by 5%.
+------+--------+----------+------------+
| eno  | ename  | salary   | incentives |​
+------+--------+----------+------------+
|    3 | Meera  | 15750.00 |       3000 |
|    5 | Ramesh | 12600.00 |       3000 |
+------+--------+----------+------------+
*/

SELECT eno, ename, basic + (basic * 0.05) AS salary, incentives FROM employee WHERE basic < 20000;
