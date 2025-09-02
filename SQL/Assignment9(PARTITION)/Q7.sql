/* 7.calculate difference between max salary and minimum salary
for deptno 20. query should display
ename, sal, diff between max and employees's sal
diff between min sal and max sal of the dept.

*/
SELECT ename, sal,
MAX(sal)OVER (PARTITION BY deptno) AS max,
MIN(sal)OVER(PARTITION BY deptno) AS min,
MAX(sal)-sal OVER(PARTITION BY deptno) AS "emp diff with max"
FROM emp
WHERE deptno = 20;

MAX(sal)-sal AS "emp diff with max"
MAX(sal)-MIN(sal) OVER(PARTITION BY deptno) AS difference,
