/*3.Find all employees with names starting with M and ending with R.
+-------+--------+-------+------+------------+---------+------+--------+
| empno | ename  | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-------+------+------------+---------+------+--------+
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-------+------+------------+---------+------+--------+
ALTERNATE -
SELECT * FROM emp
WHERE REGEXP_LIKE(ename, '^M.*R$');
*/
SELECT * FROM emp
WHERE ename LIKE 'M%R';
