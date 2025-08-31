/* 20. List emplloyees whose name starts with either 'A' or 'S' in dept 20.
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
ALETRNATE -
SELECT * FROM emp
WHERE deptno=20
AND REGEXP_LIKE(ename, '^[AS].*');
*/
SELECT * FROM emp
WHERE deptno=20
AND (ename LIKE 'A%' OR ename LIKE 'S%');
