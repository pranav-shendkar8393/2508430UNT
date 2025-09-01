/* 6. create new table emp110 same as emp 
and store all employees working in dept 10.
Add primary key constraint on this table for empno.
add foreign key constraint on deptno.
check its structure.
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
| DEPTNO   | int          | YES  | MUL | NULL    |       |
+----------+--------------+------+-----+---------+-------+
*/

CREATE TABLE emp110
AS 
SELECT * FROM emp
WHERE deptno = 10;

ALTER TABLE emp110
ADD CONSTRAINT pk_empno PRIMARY KEY(empno);

ALTER TABLE	 emp110
ADD CONSTRAINT fk_deptno FOREIGN KEY(deptno) REFERENCES
dept(deptno);