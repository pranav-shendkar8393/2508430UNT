/* 5.display details of employees as empno, ename, sal ,job, deptno
and dept name for all employees working as cleark or salesman
and earning sal>2000.
Empty set (0.000 sec)
*/
SELECT e.empno, e.ename, e.sal, e.job, e.deptno, d.dname
FROM emp AS e, dept AS d
WHERE e.job IN ('CLERK', 'SALESMAN') AND e.sal > 2000;
