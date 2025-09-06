/* 3. consider emp and dept table display empno, ename,
deptno, dname and loc for all employees.
+-------+--------+--------+------------+----------+
| empno | ename  | deptno | dname      | loc      |
+-------+--------+--------+------------+----------+
|  7369 | SMITH  |     20 | RESEARCH   | DALLAS   |
|  7499 | ALLEN  |     30 | SALES      | CHICAGO  |
|  7521 | WARD   |     30 | SALES      | CHICAGO  |
|  7566 | JONES  |     20 | RESEARCH   | DALLAS   |
|  7654 | MARTIN |     30 | SALES      | CHICAGO  |
|  7698 | BLAKE  |     30 | SALES      | CHICAGO  |
|  7782 | CLARK  |     10 | ACCOUNTING | NEW YORK |
|  7788 | SCOTT  |     20 | RESEARCH   | DALLAS   |
|  7839 | KING   |     10 | ACCOUNTING | NEW YORK |
|  7844 | TURNER |     30 | SALES      | CHICAGO  |
|  7876 | ADAMS  |     20 | RESEARCH   | DALLAS   |
|  7900 | JAMES  |     30 | SALES      | CHICAGO  |
|  7902 | FORD   |     20 | RESEARCH   | DALLAS   |
|  7934 | MILLER |     10 | ACCOUNTING | NEW YORK |
+-------+--------+--------+------------+----------+
*/

SELECT e.empno, e.ename, e.deptno, d.dname, d.loc
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno;