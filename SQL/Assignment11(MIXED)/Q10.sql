/* 10.Consider emp, dept, salgrade tables and solve the following query.
Display eno, ename, deptno, dname, sal, grade.
+-------+--------+--------+------------+---------+-------+
| empno | ename  | deptno | dname      | sal     | grade |
+-------+--------+--------+------------+---------+-------+
|  7369 | SMITH  |     20 | RESEARCH   |  800.00 |     1 |
|  7499 | ALLEN  |     30 | SALES      | 1600.00 |     3 |
|  7521 | WARD   |     30 | SALES      | 1250.00 |     2 |
|  7566 | JONES  |     20 | RESEARCH   | 2975.00 |     4 |
|  7654 | MARTIN |     30 | SALES      | 1250.00 |     2 |
|  7698 | BLAKE  |     30 | SALES      | 2850.00 |     4 |
|  7782 | CLARK  |     10 | ACCOUNTING | 2450.00 |     4 |
|  7788 | SCOTT  |     20 | RESEARCH   | 3000.00 |     4 |
|  7839 | KING   |     10 | ACCOUNTING | 5000.00 |     5 |
|  7844 | TURNER |     30 | SALES      | 1500.00 |     3 |
|  7876 | ADAMS  |     20 | RESEARCH   | 1100.00 |     1 |
|  7900 | JAMES  |     30 | SALES      |  950.00 |     1 |
|  7902 | FORD   |     20 | RESEARCH   | 3000.00 |     4 |
|  7934 | MILLER |     10 | ACCOUNTING | 1300.00 |     2 |
+-------+--------+--------+------------+---------+-------+
*/
SELECT e.empno, e.ename, d.deptno, d.dname, e.sal, s.grade FROM emp AS e
JOIN dept AS d
ON d.deptno = e.deptno
JOIN salgrade AS s
ON e.sal BETWEEN s.losal AND s.hisal;