/* 7. Display deptno, sum of salary, and min salary 
for all employees who are managers.
+--------+------------+------------+
| deptno | sum of sal | min of sal |
+--------+------------+------------+
|     20 |    8275.00 |    2450.00 |
|     30 |    8275.00 |    2450.00 |
|     10 |    8275.00 |    2450.00 |
+--------+------------+------------+
*/
SELECT deptno,
SUM(sal) OVER(PARTITION BY job) AS "sum of sal",
MIN(sal) OVER(PARTITION BY job)AS "min of sal"
FROM emp
WHERE job = 'MANAGER';