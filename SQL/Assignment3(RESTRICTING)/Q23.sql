/* 23.List all departments whose name has ateast 8 characters.
+--------+------------+----------+
| deptno | dname      | loc      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     40 | OPERATIONS | BOSTON   |
+--------+------------+----------+
ALTERNATE -
SELECT * FROM dept
WHERE REGEXP_LIKE(dname, '^.{8,}$');
*/
SELECT * FROM dept
WHERE LENGTH(dname)>=8;
