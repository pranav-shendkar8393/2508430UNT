/* 19. write a query to display empno, ename, sal, commision, increased sal by 10%
and for all employees whose name starts with A, M or S.
+-------+--------+---------+---------+---------------+
| empno | ename  | sal     | comm    | increased sal |
+-------+--------+---------+---------+---------------+
|  7369 | SMITH  |  800.00 |    NULL |      880.0000 |
|  7499 | ALLEN  | 1600.00 |  300.00 |     1760.0000 |
|  7654 | MARTIN | 1250.00 | 1400.00 |     1375.0000 |
|  7788 | SCOTT  | 3000.00 |    NULL |     3300.0000 |
|  7876 | ADAMS  | 1100.00 |    NULL |     1210.0000 |
|  7934 | MILLER | 1300.00 |    NULL |     1430.0000 |
+-------+--------+---------+---------+---------------+
ALTERNATE -
SELECT empno, ename, sal, comm, sal+(sal*0.10) AS "increased sal"
FROM emp WHERE REGEXP_LIKE(ename, '^[AMS].*');
*/
SELECT empno, ename, sal, comm, sal+(sal*0.10) AS "increased sal"
FROM emp WHERE ename LIKE 'A%'
OR ename LIKE 'M%'
OR ename LIKE 'S%';
