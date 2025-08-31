/* 5. List the employees name having letter 'L' as the second character.
+-------+-------+----------+------+------------+---------+--------+--------+
| empno | ename | job      | mgr  | hiredate   | sal     | comm   | deptno |
+-------+-------+----------+------+------------+---------+--------+--------+
|  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7698 | BLAKE | MANAGER  | 7839 | 1981-05-01 | 2850.00 |   NULL |     30 |
|  7782 | CLARK | MANAGER  | 7839 | 1981-09-06 | 2450.00 |   NULL |     10 |
+-------+-------+----------+------+------------+---------+--------+--------+
SELECT * FROM emp
WHERE REGEXP_LIKE(ename, '^.L.*');
*/
SELECT * FROM emp
WHERE ename LIKE '_L%';
