/* 11.Company decides to give rise to all employees dependig on their sal grade,
information of which is stored in increment table.
Create the table, stored the data and solve the query.
Display empno, ename, deptno, dname, sal, grade and hike.
+-------+--------+--------+------------+---------+-------+------+
| empno | ename  | deptno | dname      | sal     | grade | hike |
+-------+--------+--------+------------+---------+-------+------+
|  7369 | SMITH  |     20 | RESEARCH   |  800.00 |     1 |   10 |
|  7499 | ALLEN  |     30 | SALES      | 1600.00 |     3 |    5 |
|  7521 | WARD   |     30 | SALES      | 1250.00 |     2 |    7 |
|  7566 | JONES  |     20 | RESEARCH   | 2975.00 |     4 |    2 |
|  7654 | MARTIN |     30 | SALES      | 1250.00 |     2 |    7 |
|  7698 | BLAKE  |     30 | SALES      | 2850.00 |     4 |    2 |
|  7782 | CLARK  |     10 | ACCOUNTING | 2450.00 |     4 |    2 |
|  7788 | SCOTT  |     20 | RESEARCH   | 3000.00 |     4 |    2 |
|  7839 | KING   |     10 | ACCOUNTING | 5000.00 |     5 | NULL |
|  7844 | TURNER |     30 | SALES      | 1500.00 |     3 |    5 |
|  7876 | ADAMS  |     20 | RESEARCH   | 1100.00 |     1 |   10 |
|  7900 | JAMES  |     30 | SALES      |  950.00 |     1 |   10 |
|  7902 | FORD   |     20 | RESEARCH   | 3000.00 |     4 |    2 |
|  7934 | MILLER |     10 | ACCOUNTING | 1300.00 |     2 |    7 |
+-------+--------+--------+------------+---------+-------+------+
*/
CREATE TABLE increment(
    grade INT,
    hike INT
);

INSERT INTO increment VALUES
    (1, 10),
    (2, 7),
    (3, 5),
    (4, 2),
    (5, NULL);

SELECT e.empno, e.ename, d.deptno, d.dname, e.sal, s.grade, i.hike
FROM emp AS e
JOIN dept AS d
ON e.deptno = d.deptno
JOIN salgrade AS s
ON e.sal BETWEEN s.losal AND s.hisal
JOIN increment AS i
ON s.grade = i.grade;