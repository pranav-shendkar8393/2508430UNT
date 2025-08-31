/*1.Find all employees with name ending with R.
+-------+--------+----------+------+------------+---------+------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+----------+------+------------+---------+------+--------+
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 | 0.00 |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+----------+------+------------+---------+------+--------+
ALTERNATE -
SELECT * FROM emp
WHERE REGEXP_LIKE(ename, '^.*R$');
*/
SELECT * FROM emp
WHERE ename LIKE '%R';
