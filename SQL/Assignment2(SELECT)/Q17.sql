/*17.
retrieve the details (name, Salary and deptno) of the emp who are working in department
no 20
+-------+---------+--------+
| ename | sal     | deptno |
+-------+---------+--------+
| SMITH |  800.00 |     20 |
| JONES | 2975.00 |     20 |
| SCOTT | 3000.00 |     20 |
| ADAMS | 1100.00 |     20 |
| FORD  | 3000.00 |     20 |
+-------+---------+--------+
*/
SELECT ename, sal, deptno FROM emp
WHERE deptno = 20;