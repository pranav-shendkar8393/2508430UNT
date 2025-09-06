/* 4. Display all employees with salary > either ward's salary 
or blakes's sal.
+-------+--------+-----------+------+------------+---------+--------+--------+
| EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
+-------+--------+-----------+------+------------+---------+--------+--------+
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |   NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |   NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-09-06 | 2450.00 |   NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |   NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |   NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |   0.00 |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |   NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |   NULL |     10 |
+-------+--------+-----------+------+------------+---------+--------+--------+
*/
SELECT * FROM  emp
WHERE sal > ANY (
    SELECT sal FROM emp
    WHERE ename IN ('WARD', 'BLAKE')
);