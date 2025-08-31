/* 17.List the details of the employees whose names start with 'A' and end with 'S'
or whose names contains N as the second or third character
and end with either 'N' or 'S'.
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
ALTERNATE-
SELECT * FROM emp
WHERE REGEXP_LIKE(ename, '^A.*S$|^.N.*[NS]$|^..N.*[NS]$');
*/
SELECT * FROM emp
WHERE (ename LIKE 'A%S')
OR (ename LIKE '_N%' OR ename LIKE '__N%')
AND (ename LIKE '%S' OR ename LIKE '%N');
