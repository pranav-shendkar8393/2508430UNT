/* 6.calculate how many employees earn sal greater than 1500 in each dept.
query should display
ename, sal, count of employees earning sal >1500.
+-------+---------+-----------------+
| ename | sal     | employees count |
+-------+---------+-----------------+
| ALLEN | 1600.00 |               7 |
| BLAKE | 2850.00 |               7 |
| CLARK | 2450.00 |               7 |
| FORD  | 3000.00 |               7 |
| JONES | 2975.00 |               7 |
| KING  | 5000.00 |               7 |
| SCOTT | 3000.00 |               7 |
+-------+---------+-----------------+
*/
SELECT ename, sal,
COUNT(*)OVER() AS "employees count"
FROM emp WHERE sal > 1500;
