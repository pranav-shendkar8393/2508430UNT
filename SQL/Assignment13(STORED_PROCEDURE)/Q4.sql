/* 4.Write a Procedure to calculate total salary of all employees.
+-------+--------+-----------+------+------------+----------+---------+--------+--------------+
| empno | ename  | job       | mgr  | hiredate   | sal      | comm    | deptno | total_salary |
+-------+--------+-----------+------+------------+----------+---------+--------+--------------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |   800.00 |    NULL |     20 |       800.00 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 |  1600.00 |  300.00 |     30 |      1900.00 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 |  1250.00 |  500.00 |     30 |      1750.00 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 |  2975.00 |    NULL |     20 |      2975.00 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 |  1250.00 | 1400.00 |     30 |      2650.00 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 |  2850.00 |    NULL |     30 |      2850.00 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-09-06 |  2450.00 |    NULL |     10 |      2450.00 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 |  3000.00 |    NULL |     20 |      3000.00 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 |  5000.00 |    NULL |     10 |      5000.00 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 |  1500.00 |    0.00 |     30 |      1500.00 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 |  1100.00 |    NULL |     20 |      1100.00 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |   950.00 |    NULL |     30 |       950.00 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 |  3000.00 |    NULL |     20 |      3000.00 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 |  1300.00 |    NULL |     10 |      1300.00 |
|  1111 | Geeta  | NULL      | NULL | NULL       | 10000.00 |  300.00 |     20 |     10300.00 |
|  2222 | Raj    | ANALYST   | NULL | NULL       |     NULL |    NULL |     40 |         NULL |
+-------+--------+-----------+------+------------+----------+---------+--------+--------------+
*/

DELIMITER //
DROP PROCEDURE IF EXISTS q4;
CREATE PROCEDURE q4()
BEGIN
    SELECT *, sal+IFNULL(comm, 0) AS total_salary
    FROM emp;
END //
DELIMITER ;