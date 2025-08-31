/*
list details of employees as ename, deptno, dname, sal and comm.
+--------+--------+------------+---------+---------+
| ename  | deptno | dname      | sal     | comm    |
+--------+--------+------------+---------+---------+
| SMITH  |     20 | RESEARCH   |  800.00 |    NULL |
| ALLEN  |     30 | SALES      | 1600.00 |  300.00 |
| WARD   |     30 | SALES      | 1250.00 |  500.00 |
| JONES  |     20 | RESEARCH   | 2975.00 |    NULL |
| MARTIN |     30 | SALES      | 1250.00 | 1400.00 |
| BLAKE  |     30 | SALES      | 2850.00 |    NULL |
| CLARK  |     10 | ACCOUNTING | 2450.00 |    NULL |
| SCOTT  |     20 | RESEARCH   | 3000.00 |    NULL |
| KING   |     10 | ACCOUNTING | 5000.00 |    NULL |
| TURNER |     30 | SALES      | 1500.00 |    0.00 |
| ADAMS  |     20 | RESEARCH   | 1100.00 |    NULL |
| JAMES  |     30 | SALES      |  950.00 |    NULL |
| FORD   |     20 | RESEARCH   | 3000.00 |    NULL |
| MILLER |     10 | ACCOUNTING | 1300.00 |    NULL |
+--------+--------+------------+---------+---------+
*/
SELECT e.ename, e.deptno, d.dname, e.sal, e.comm
FROM emp AS e, dept AS D
WHERE e.deptno = d.deptno;