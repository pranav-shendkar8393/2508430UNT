/* 4.Find number of clerks working in each department.
Display ename, job and count of that job.
+--------+-------+--------+-----------+
| ename  | job   | deptno | job count |
+--------+-------+--------+-----------+
| MILLER | CLERK |     10 |         1 |
| ADAMS  | CLERK |     20 |         2 |
| SMITH  | CLERK |     20 |         2 |
| JAMES  | CLERK |     30 |         1 |
+--------+-------+--------+-----------+
*/
SELECT ename, job, deptno,
COUNT(job) OVER(PARTITION BY deptno) AS "job count"
FROM emp WHERE job = 'Clerk';

