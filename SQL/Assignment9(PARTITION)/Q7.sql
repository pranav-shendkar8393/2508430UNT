/* 7.calculate difference between max salary and minimum salary
for deptno 20. query should display
ename, sal, diff between max and employees's sal
diff between min sal and max sal of the dept.
+-------+---------+---------+---------+---------------------+---------------------+
| ename | sal     | maximum | minimum | difference with sal | difference with min |
+-------+---------+---------+---------+---------------------+---------------------+
| SMITH |  800.00 | 3000.00 |  800.00 |             2200.00 |             2200.00 |
| JONES | 2975.00 | 3000.00 |  800.00 |               25.00 |             2200.00 |
| SCOTT | 3000.00 | 3000.00 |  800.00 |                0.00 |             2200.00 |
| ADAMS | 1100.00 | 3000.00 |  800.00 |             1900.00 |             2200.00 |
| FORD  | 3000.00 | 3000.00 |  800.00 |                0.00 |             2200.00 |
+-------+---------+---------+---------+---------------------+---------------------+
*/
SELECT ename, sal, m.maximum, m.minimum,
(m.maximum-sal) AS "difference with sal",
(m.maximum-m.minimum) AS "difference with min"
FROM emp,
(SELECT MAX(sal) AS maximum, MIN(sal) AS minimum FROM emp WHERE deptno=20) AS m
WHERE deptno = 20;

