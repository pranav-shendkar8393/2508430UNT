/* 4. Consider emp and dept table display empno, ename, deptno, dname and loc
for all employees who are working as managers.
+-------+-------+--------+------------+----------+
| empno | ename | deptno | dname      | loc      |
+-------+-------+--------+------------+----------+
|  7566 | JONES |     20 | RESEARCH   | DALLAS   |
|  7698 | BLAKE |     30 | SALES      | CHICAGO  |
|  7782 | CLARK |     10 | ACCOUNTING | NEW YORK |
+-------+-------+--------+------------+----------+
*/
SELECT e.empno, e.ename, e.deptno, d.dname, d.loc
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno AND e.job = 'MANAGER';