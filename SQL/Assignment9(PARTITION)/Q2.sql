/* 2.write a query to dislay maximum salary, minimum salary
and average salary along with emp name, deptno and dname
for all the department.
+--------+--------+------------+-------------+------------+------------+
| ename  | deptno | dname      | avg salary  | min salary | max salary |
+--------+--------+------------+-------------+------------+------------+
| MILLER |     10 | ACCOUNTING | 2916.666667 |    1300.00 |    5000.00 |
| CLARK  |     10 | ACCOUNTING | 2916.666667 |    1300.00 |    5000.00 |
| KING   |     10 | ACCOUNTING | 2916.666667 |    1300.00 |    5000.00 |
| SMITH  |     20 | RESEARCH   | 2175.000000 |     800.00 |    3000.00 |
| ADAMS  |     20 | RESEARCH   | 2175.000000 |     800.00 |    3000.00 |
| FORD   |     20 | RESEARCH   | 2175.000000 |     800.00 |    3000.00 |
| JONES  |     20 | RESEARCH   | 2175.000000 |     800.00 |    3000.00 |
| SCOTT  |     20 | RESEARCH   | 2175.000000 |     800.00 |    3000.00 |
| WARD   |     30 | SALES      | 1566.666667 |     950.00 |    2850.00 |
| MARTIN |     30 | SALES      | 1566.666667 |     950.00 |    2850.00 |
| ALLEN  |     30 | SALES      | 1566.666667 |     950.00 |    2850.00 |
| BLAKE  |     30 | SALES      | 1566.666667 |     950.00 |    2850.00 |
| TURNER |     30 | SALES      | 1566.666667 |     950.00 |    2850.00 |
| JAMES  |     30 | SALES      | 1566.666667 |     950.00 |    2850.00 |
+--------+--------+------------+-------------+------------+------------+
*/
SELECT e.ename, e.deptno, d.dname,
AVG(sal) OVER(PARTITION BY e.deptno) AS "avg salary",
MIN(sal) OVER(PARTITION BY e.deptno) AS "min salary",
MAX(sal) OVER(PARTITION BY e.deptno) AS "max salary"
FROM emp AS e, dept AS d
WHERE e.deptno = d.deptno;
