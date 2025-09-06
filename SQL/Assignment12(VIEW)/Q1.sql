/* 1.Create a view emp_view having following columns
empno, ename, deptno, sal, comm
+-------+--------+--------+---------+---------+
| empno | ename  | deptno | sal     | comm    |
+-------+--------+--------+---------+---------+
|  7369 | SMITH  |     20 |  800.00 |    NULL |
|  7499 | ALLEN  |     30 | 1600.00 |  300.00 |
|  7521 | WARD   |     30 | 1250.00 |  500.00 |
|  7566 | JONES  |     20 | 2975.00 |    NULL |
|  7654 | MARTIN |     30 | 1250.00 | 1400.00 |
|  7698 | BLAKE  |     30 | 2850.00 |    NULL |
|  7782 | CLARK  |     10 | 2450.00 |    NULL |
|  7788 | SCOTT  |     20 | 3000.00 |    NULL |
|  7839 | KING   |     10 | 5000.00 |    NULL |
|  7844 | TURNER |     30 | 1500.00 |    0.00 |
|  7876 | ADAMS  |     20 | 1100.00 |    NULL |
|  7900 | JAMES  |     30 |  950.00 |    NULL |
|  7902 | FORD   |     20 | 3000.00 |    NULL |
|  7934 | MILLER |     10 | 1300.00 |    NULL |
+-------+--------+--------+---------+---------+
*/
CREATE VIEW emp_view
AS
SELECT empno, ename, deptno, sal, comm
FROM emp;
