/* 8. display the information of department i.e deptno, dname
and loc in which clerks are not working.
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     20 | RESEARCH   | DALLAS   |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     10 | ACCOUNTING | NEW YORK |
+--------+------------+----------+
*/
SELECT d.deptno, d.dname, d.loc
FROM dept AS d, emp AS e
WHERE e.deptno = d.deptno AND e.job = 'CLERK';
