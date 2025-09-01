/* 5. Create new table dept11 having same structure as that of dept table.
Add primary key constraint on deptno.
check it's structure.
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| DEPTNO | int         | NO   | PRI | NULL    |       |
| DNAME  | varchar(14) | YES  |     | NULL    |       |
| LOC    | varchar(13) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
*/

CREATE TABLE dept11
AS 
SELECT * FROM dept;

ALTER TABLE dept11
ADD CONSTRAINT pk_deptno PRIMARY KEY(deptno);