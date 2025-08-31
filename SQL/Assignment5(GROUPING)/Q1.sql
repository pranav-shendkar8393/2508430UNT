/*
find how many analyst are there in each department
*/
SELECT COUNT(*) FROM emp
WHERE job='analyst'
GROUP BY deptno
