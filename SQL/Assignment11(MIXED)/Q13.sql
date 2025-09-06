/* 13.List all employees who works for dallas loacation and
had joined in the year 1980.
+-------+-------+-------+------+------------+--------+------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 1980-12-17 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
*/
SELECT * FROM emp
WHERE deptno = (
    SELECT deptno FROM dept
    WHERE loc = 'DALLAS'
) AND YEAR(hiredate) = 1980;

