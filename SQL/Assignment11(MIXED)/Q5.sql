/* 5.Consider emp and dept table display deptno and 
dname to whom employees are assigned 
+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
+--------+------------+----------+
and also the dept to whom employees are not assigned
+--------+------------+--------+
| DEPTNO | DNAME      | LOC    |
+--------+------------+--------+
|     40 | OPERATIONS | BOSTON |
+--------+------------+--------+
*/

SELECT * FROM dept
WHERE deptno IN (
    SELECT deptno FROM emp
    WHERE deptno IS NOT NULL
);

SELECT * FROM dept
WHERE deptno NOT IN (
    SELECT deptno FROM emp
    WHERE deptno IS NOT NULL
);