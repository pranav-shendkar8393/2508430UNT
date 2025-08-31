/*13.
use EMP, DEPT and salgrade tables to solve following queries.
to list all records with sal > 2000 and comm > 200.
Empty set (0.00 sec)
*/
SELECT *
FROM emp AS e, dept AS D, salgrade AS s
WHERE (e.comm > 200 AND e.sal > 2000)
AND (e.deptno = d.deptno) AND (e.sal BETWEEN s.losal AND s.hisal);