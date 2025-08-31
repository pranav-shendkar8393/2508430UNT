/* 8.To find all employee with name starting with A or M and ending with E.
Empty set (0.001 sec)
ALTERNATE -
SELECT * FROM emp
WHERE REGEXP_LIKE(ename, '^[AM].*E$');
*/
SELECT * FROM emp
WHERE (ename LIKE 'A%E' OR ename LIKE'M%E');
