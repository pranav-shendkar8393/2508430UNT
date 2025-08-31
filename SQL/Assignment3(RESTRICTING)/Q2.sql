/*2.To find all employees with name starting with
either M or A and last character as either R or E.
+-------+--------+-------+------+------------+---------+------+--------+
| empno | ename  | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-------+------+------------+---------+------+--------+
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-------+------+------------+---------+------+--------+
ALTERNATE -
SELECT * FROM emp
WHERE REGEXP_LIKE(ename, '^[MA].*[RE]$');
*/
SELECT * FROM emp
WHERE (ename LIKE 'M%' OR ename LIKE 'A%')
AND (ename LIKE '%R' OR ename LIKE '%E');
