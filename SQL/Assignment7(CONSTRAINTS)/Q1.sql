/* 1. create new table dept100 having same structure and data as that of dept table.
create new table emp100 having same structure and data as that of emp table.
Add primary key constraint on deptno for dept100 table.
Add primary key constraint on empno for emp100 table.
Check structure of both tables.
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| DEPTNO | int         | NO   | PRI | NULL    |       |
| DNAME  | varchar(14) | YES  |     | NULL    |       |
| LOC    | varchar(13) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| EMPNO    | int          | NO   | PRI | NULL    |       |
| ENAME    | varchar(10)  | YES  |     | NULL    |       |
| JOB      | varchar(9)   | YES  |     | NULL    |       |
| MGR      | int          | YES  |     | NULL    |       |
| HIREDATE | date         | YES  |     | NULL    |       |
| SAL      | decimal(7,2) | YES  |     | NULL    |       |
| COMM     | decimal(7,2) | YES  |     | NULL    |       |
| DEPTNO   | int          | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
*/

CREATE TABLE dept100
AS 
SELECT * FROM dept;

CREATE TABLE emp100
AS 
SELECT * FROM emp;


ALTER TABLE dept100
ADD CONSTRAINT pk_did
PRIMARY KEY(deptno);

ALTER TABLE emp100
ADD CONSTRAINT pk_eid
PRIMARY KEY(empno);