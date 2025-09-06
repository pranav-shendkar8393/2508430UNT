/* 8. Create a view with columns as
empno, ename, deptno and dname.
+-------+--------+--------+------------+
| empno | ename  | deptno | dname      |
+-------+--------+--------+------------+
|  7369 | SMITH  |     20 | RESEARCH   |
|  7499 | ALLEN  |     30 | SALES      |
|  7521 | WARD   |     30 | SALES      |
|  7566 | JONES  |     20 | RESEARCH   |
|  7654 | MARTIN |     30 | SALES      |
|  7698 | BLAKE  |     30 | SALES      |
|  7782 | CLARK  |     10 | ACCOUNTING |
|  7788 | SCOTT  |     20 | RESEARCH   |
|  7839 | KING   |     10 | ACCOUNTING |
|  7844 | TURNER |     30 | SALES      |
|  7876 | ADAMS  |     20 | RESEARCH   |
|  7900 | JAMES  |     30 | SALES      |
|  7902 | FORD   |     20 | RESEARCH   |
|  7934 | MILLER |     10 | ACCOUNTING |
|  1111 | Geeta  |     20 | RESEARCH   |
|  2222 | Raj    |     40 | OPERATIONS |
+-------+--------+--------+------------+
check if you can enter the data in the above view.
output:
ERROR 1394 (HY000): Can not insert into join view 'assignment1.view8' without fields list

ERROR 1394 (HY000): Can not insert into join view 'assignment1.view9' without fields list

*/
CREATE VIEW view8
AS
SELECT empno, ename, emp.deptno, dname FROM emp
JOIN dept ON emp.deptno = dept.deptno;

INSERT INTO view8
VALUES(3333, 'Seeta', 20, 'RESEARCH');


CREATE VIEW view9
AS
SELECT e.empno, e.ename, e.deptno, d.dname
FROM emp AS e, dept AS d
WHERE e.deptno = d.deptno;

INSERT INTO view9
VALUES(3333, 'Seeta', 20, 'RESEARCH');
