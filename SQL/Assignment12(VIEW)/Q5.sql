/* 5.Create a view for deptno 20 as new_emp_v20
having following information columns
empno, ename, deptno, job
with CONSTRAINT 'WITH CHECK OPTION'
+-------+-------+--------+---------+
| empno | ename | deptno | job     |
+-------+-------+--------+---------+
|  7369 | SMITH |     20 | CLERK   |
|  7566 | JONES |     20 | MANAGER |
|  7788 | SCOTT |     20 | ANALYST |
|  7876 | ADAMS |     20 | CLERK   |
|  7902 | FORD  |     20 | ANALYST |
|  1111 | Geeta |     20 | NULL    |
+-------+-------+--------+---------+
*/
CREATE VIEW new_emp_v20
AS
SELECT empno, ename, deptno, job
FROM emp WHERE deptno = '20'
WITH CHECK OPTION;
