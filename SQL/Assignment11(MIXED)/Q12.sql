/* 12. For every employee display empno, ename, mgr and name of manager to home
an employee is reporting.
+-------+--------+------+-------+
| empno | ename  | mgr  | ename |
+-------+--------+------+-------+
|  7902 | FORD   | 7566 | JONES |
|  7788 | SCOTT  | 7566 | JONES |
|  7900 | JAMES  | 7698 | BLAKE |
|  7844 | TURNER | 7698 | BLAKE |
|  7654 | MARTIN | 7698 | BLAKE |
|  7521 | WARD   | 7698 | BLAKE |
|  7499 | ALLEN  | 7698 | BLAKE |
|  7934 | MILLER | 7782 | CLARK |
|  7876 | ADAMS  | 7788 | SCOTT |
|  7782 | CLARK  | 7839 | KING  |
|  7698 | BLAKE  | 7839 | KING  |
|  7566 | JONES  | 7839 | KING  |
|  7369 | SMITH  | 7902 | FORD  |
+-------+--------+------+-------+
*/
SELECT e.empno, e.ename, e.mgr, e1.ename
FROM emp AS e
JOIN emp AS e1
ON e.mgr = e1.empno;
