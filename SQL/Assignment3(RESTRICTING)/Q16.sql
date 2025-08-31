/* 16. List the employees name having 'E' as a second last character
+-------+--------+----------+------+------------+---------+--------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm   | deptno |
+-------+--------+----------+------+------------+---------+--------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |   NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |   0.00 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |   NULL |     30 |
|  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |   NULL |     10 |
+-------+--------+----------+------+------------+---------+--------+--------+
ALTERNATE -
SELECT * FROM emp
WHERE REGEXP_LIKE(ename, '^.*E.$');
*/
SELECT * FROM emp
WHERE ename LIKE '%E_';

