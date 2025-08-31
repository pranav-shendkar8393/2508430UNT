/* 18.Display all employees with sal > 1000 and sal < 3000 and job has A at starting position and ends with T.
Empty set (0.000 sec)
ALTERNATE -
SELECT * FROM emp
WHERE sal > 1000 AND sal < 3000
AND REGEXP_LIKE(job, '^A.*T$');
*/
SELECT * FROM emp
WHERE sal > 1000 AND sal < 3000
AND job LIKE 'A%T';
