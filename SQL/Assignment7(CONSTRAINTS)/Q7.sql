/* 7. CREATE following tables for given schema, 
apply constraints as mentioned in the schema.
+-----+----------------+-------+
| cid | cname          | fees  |
+-----+----------------+-------+
| C1  | Core Java      |  7000 |
| C2  | Linux          |  8000 |
| C3  | Data Structure | 10000 |
| C4  | Python         | 12000 |
| C5  | Dot Net        |  NULL |
+-----+----------------+-------+
+-----+---------+------+--------+------------+
| tid | tname   | cid  | salary | experience |
+-----+---------+------+--------+------------+
| T1  | Amit    | C2   |  21000 |         13 |
| T2  | Rajan   | C1   |  25000 |         13 |
| T3  | Shruti  | C2   |  34000 |         15 |
| T4  | Arti    | C2   |  50000 |         16 |
| T5  | Sameer  | C3   |  29000 |         14 |
| T6  | Sanajay | NULL |  30000 |         15 |
| T7  | Soha    | NULL |  31000 |         15 |
+-----+---------+------+--------+------------+
Try adding following data in the trainer table
    ('T2', 'Mahesh', NULL, 16000, 12),
	('T8', 'Meena', 'C3', 25000, 11),
	('T9', NULL, 'C2', 30000, 10),
	('T10', 'Soham', 'C2', 35000, 8),
	('T11', 'Anil', 'C3', NULL, 11);	
ERROR 1062 (23000): Duplicate entry 'T2' for key 'trainer.PRIMARY'
try on delete set NULL - 
DELETE FROM course
WHERE cid='C3';
+-----+---------+------+--------+------------+
| tid | tname   | cid  | salary | experience |
+-----+---------+------+--------+------------+
| T1  | Amit    | C2   |  21000 |         13 |
| T2  | Rajan   | C1   |  25000 |         13 |
| T3  | Shruti  | C2   |  34000 |         15 |
| T4  | Arti    | C2   |  50000 |         16 |
| T5  | Sameer  | NULL |  29000 |         14 |
| T6  | Sanajay | NULL |  30000 |         15 |
| T7  | Soha    | NULL |  31000 |         15 |
+-----+---------+------+--------+------------+
drop table trainer and create it again with on delete cascade clause-
TRY on delete cascade on trainer table.
+-----+---------+------+--------+------------+
| tid | tname   | cid  | salary | experience |
+-----+---------+------+--------+------------+
| T1  | Amit    | C2   |  21000 |         13 |
| T3  | Shruti  | C2   |  34000 |         15 |
| T4  | Arti    | C2   |  50000 |         16 |
| T5  | Sameer  | C3   |  29000 |         14 |
| T6  | Sanajay | NULL |  30000 |         15 |
| T7  | Soha    | NULL |  31000 |         15 |
+-----+---------+------+--------+------------+
*/

CREATE TABLE course(
    cid VARCHAR(2),
	cname VARCHAR(32) UNIQUE NOT NULL,
	fees INT DEFAULT 5000,
	CONSTRAINT pk_cid PRIMARY KEY(cid)
);

CREATE TABLE trainer(
    tid VARCHAR(2),
	tname VARCHAR(32) NOT NULL,
	cid VARCHAR(2),
	salary INT DEFAULT 20000,
	experience INT CHECK(experience >= 10),
	CONSTRAINT pk_tid PRIMARY KEY(tid),
	CONSTRAINT fk_cid FOREIGN KEY(cid) REFERENCES course(cid)
	ON DELETE SET NULL
);

INSERT INTO course VALUES
    ('C1', 'Core Java', 7000),
	('C2', 'Linux', 8000),
	('C3', 'Data Structure', 10000),
	('C4', 'Python', 12000),
	('C5', 'Dot Net', NULL);
	
INSERT INTO trainer VALUES
    ('T1', 'Amit', 'C2', 21000, 13),
	('T2', 'Rajan', 'C1', 25000, 13),
	('T3', 'Shruti', 'C2', 34000, 15),
	('T4', 'Arti', 'C2', 50000, 16),
	('T5', 'Sameer', 'C3', 29000, 14),
	('T6', 'Sanajay', NULL, 30000, 15),
	('T7', 'Soha', NULL, 31000, 15);
	
INSERT INTO trainer VALUES
    ('T2', 'Mahesh', NULL, 16000, 12),
	('T8', 'Meena', 'C3', 25000, 11),
	('T9', NULL, 'C2', 30000, 10),
	('T10', 'Soham', 'C2', 35000, 8),
	('T11', 'Anil', 'C3', NULL, 11);
	
CREATE TABLE trainer(
    tid VARCHAR(2),
	tname VARCHAR(32) NOT NULL,
	cid VARCHAR(2),
	salary INT DEFAULT 20000,
	experience INT CHECK(experience >= 10),
	CONSTRAINT pk_tid PRIMARY KEY(tid),
	CONSTRAINT fk_cid FOREIGN KEY(cid) REFERENCES course(cid)
	ON DELETE CASCADE
);