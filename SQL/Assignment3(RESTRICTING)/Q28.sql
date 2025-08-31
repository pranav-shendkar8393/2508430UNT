/* 28.Display all employees where comm is null and name starts with 'S'.
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
ALTERNATE -
SELECT * FROM emp
WHERE comm IS NULL AND REGEXP_LIKE(ename, '^S.*');
*/
SELECT * FROM emp
WHERE ename LIKE 'S%' AND comm IS NULL;
