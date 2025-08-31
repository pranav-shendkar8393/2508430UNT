/* 11.Find all employees with name starting with M,
having L at 3rd position and ends with R
+-------+--------+-------+------+------------+---------+------+--------+
| empno | ename  | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-------+------+------------+---------+------+--------+
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-------+------+------------+---------+------+--------+
ALTERNATE -
SELECT * FROM emp
WHERE REGEXP_LIKE(ename, '^M.L.*R$');
*/
SELECT * FROM emp
WHERE ename LIKE 'M_L%R';
