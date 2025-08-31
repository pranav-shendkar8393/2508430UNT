/* 22.display all employees whose name starts with A and
ends with either N or S or works in dept 10.
+-------+--------+-----------+------+------------+---------+--------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm   | deptno |
+-------+--------+-----------+------+------------+---------+--------+--------+
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-09-06 | 2450.00 |   NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |   NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |   NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |   NULL |     10 |
+-------+--------+-----------+------+------------+---------+--------+--------+
ALTERNATE -
SELECT * FROM emp
WHERE deptno=10 OR
REGEXP_LIKE(ename, '^A.*[NS]$');
*/
SELECT * FROM emp
WHERE deptno=10
OR (ename LIKE 'A%N' OR ename LIKE 'A%S');
