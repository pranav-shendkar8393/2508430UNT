/* 3.
implement following using case statement. use data from emp database.
if comm is null='need improvement'
if < 500 ='ok'
if >= 500 = 'good'
<1000 = 'excellent'
+-------+--------+-----------+------+------------+---------+---------+--------+------------------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO | feedback         |
+-------+--------+-----------+------+------------+---------+---------+--------+------------------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 | need improvement |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 | ok               |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 | good             |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 | need improvement |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 | Excellent        |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 | need improvement |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-09-06 | 2450.00 |    NULL |     10 | need improvement |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 | need improvement |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 | need improvement |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 | need improvement |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 | need improvement |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 | need improvement |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 | need improvement |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 | need improvement |
+-------+--------+-----------+------+------------+---------+---------+--------+------------------+
*/
SELECT *, CASE
		WHEN comm = 0
		THEN 'need improvement'
		WHEN comm < 500
		THEN 'ok'
		WHEN comm BETWEEN 500 AND 999
		THEN 'good'
		WHEN comm > 1000
		THEN 'Excellent'
		ELSE 'need improvement'
		END AS "feedback"
FROM emp;