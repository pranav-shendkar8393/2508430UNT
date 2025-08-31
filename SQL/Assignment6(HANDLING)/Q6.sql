/* 6. list details of employees as ename, deptno, dname, sal, comm working in dept 20 and 30 who did not get any commission.
+--------+--------+-------+---------+---------+
| ename  | deptno | dname | sal     | comm    |
+--------+--------+-------+---------+---------+
| ALLEN  |     30 | SALES | 1600.00 |  300.00 |
| WARD   |     30 | SALES | 1250.00 |  500.00 |
| MARTIN |     30 | SALES | 1250.00 | 1400.00 |
+--------+--------+-------+---------+---------+
*/
SELECT e.ename, e.deptno, d.dname, e.sal, e.comm
FROM emp AS e, dept AS d
WHERE e.deptno = d.deptno AND (e.deptno IN (20, 30) AND IFNULL(e.comm, 0)>0);
