/*19.
display empno, empname, sal, comm and total salary
+-------+--------+---------+---------+--------------+
| empno | ename  | sal     | comm    | total salary |
+-------+--------+---------+---------+--------------+
|  7369 | SMITH  |  800.00 |    NULL |       800.00 |
|  7499 | ALLEN  | 1600.00 |  300.00 |      1900.00 |
|  7521 | WARD   | 1250.00 |  500.00 |      1750.00 |
|  7566 | JONES  | 2975.00 |    NULL |      2975.00 |
|  7654 | MARTIN | 1250.00 | 1400.00 |      2650.00 |
|  7698 | BLAKE  | 2850.00 |    NULL |      2850.00 |
|  7782 | CLARK  | 2450.00 |    NULL |      2450.00 |
|  7788 | SCOTT  | 3000.00 |    NULL |      3000.00 |
|  7839 | KING   | 5000.00 |    NULL |      5000.00 |
|  7844 | TURNER | 1500.00 |    0.00 |      1500.00 |
|  7876 | ADAMS  | 1100.00 |    NULL |      1100.00 |
|  7900 | JAMES  |  950.00 |    NULL |       950.00 |
|  7902 | FORD   | 3000.00 |    NULL |      3000.00 |
|  7934 | MILLER | 1300.00 |    NULL |      1300.00 |
+-------+--------+---------+---------+--------------+
*/
SELECT empno, ename, sal, comm, sal+IFNULL(comm, 0) AS "total salary" FROM emp;