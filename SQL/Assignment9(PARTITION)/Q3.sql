/* 3.find sum of salary for all employees
whose sal > 1000.
query should display ename, sal, sum of salary
should be displayed according to job.
+--------+---------+---------------+
| ename  | sal     | sum of salary |
+--------+---------+---------------+
| FORD   | 3000.00 |       6000.00 |
| SCOTT  | 3000.00 |       6000.00 |
| MILLER | 1300.00 |       2400.00 |
| ADAMS  | 1100.00 |       2400.00 |
| CLARK  | 2450.00 |       8275.00 |
| BLAKE  | 2850.00 |       8275.00 |
| JONES  | 2975.00 |       8275.00 |
| KING   | 5000.00 |       5000.00 |
| ALLEN  | 1600.00 |       5600.00 |
| MARTIN | 1250.00 |       5600.00 |
| TURNER | 1500.00 |       5600.00 |
| WARD   | 1250.00 |       5600.00 |
+--------+---------+---------------+
*/
SELECT ename, sal,
SUM(sal) OVER(PARTITION BY job) AS "sum of salary"
FROM emp
WHERE sal > 1000;
