/* 9. Create following table 
faculty
+-----+-------+-----------+-----------+
| fid | fname | sp_skill1 | sp_skill2 |
+-----+-------+-----------+-----------+
|  10 | Amol  | Database  | Java      |
|  11 | Asha  | Java      | MySQL     |
|  12 | Kiran | CPP       | database  |
|  13 | Seeta | MySQL     | database  |
+-----+-------+-----------+-----------+
room
+-----+--------+-----------+
| rid | rname  | rloc      |
+-----+--------+-----------+
| 100 | Jasmin | 1st floor |
| 101 | Rose   | 2nd floor |
| 103 | Mogra  | 1st floor |
| 105 | Lotus  | 1st floor |
+-----+--------+-----------+
course
+-----+-------+------+------+
| cid | cname | rid  | fid  |
+-----+-------+------+------+
| 121 | DBDA  |  100 |   10 |
| 131 | DAC   |  101 | NULL |
| 141 | DTISS | NULL | NULL |
| 151 | DOIT  |  105 |   12 |
+-----+-------+------+------+
List all rooms which are not allocated to any courses.
+-----+-------+-----------+
| rid | rname | rloc      |
+-----+-------+-----------+
| 103 | Mogra | 1st floor |
+-----+-------+-----------+
List all rooms which are allocated to any courses.
+-----+--------+-----------+
| rid | rname  | rloc      |
+-----+--------+-----------+
| 100 | Jasmin | 1st floor |
| 101 | Rose   | 2nd floor |
| 105 | Lotus  | 1st floor |
+-----+--------+-----------+
Display courses and faculty assigned to
those courses whose special skill is database.
+-------+-------+-----------+-----------+
| cname | fname | sp_skill1 | sp_skill2 |
+-------+-------+-----------+-----------+
| DBDA  | Amol  | Database  | Java      |
| DOIT  | Kiran | CPP       | database  |
+-------+-------+-----------+-----------+
Display course details, faculty and room details.
+-----+-------+-----+-------+-----+--------+-----------+
| cid | cname | fid | fname | rid | rname  | rloc      |
+-----+-------+-----+-------+-----+--------+-----------+
| 121 | DBDA  |  10 | Amol  | 100 | Jasmin | 1st floor |
| 151 | DOIT  |  12 | Kiran | 105 | Lotus  | 1st floor |
+-----+-------+-----+-------+-----+--------+-----------+
*/

CREATE TABLE faculty(
    fid INT,
    fname VARCHAR(20) NOT NULL,
    sp_skill1 VARCHAR(30),
    sp_skill2 VARCHAR(30),
    CONSTRAINT pk_fid PRIMARY KEY(fid)
);

INSERT INTO faculty VALUES
    (10, 'Amol', 'Database', 'Java'),
    (11, 'Asha', 'Java', 'MySQL'),
    (12, 'Kiran', 'CPP', 'database'),
    (13, 'Seeta', 'MySQL', 'database')
;

CREATE TABLE room(
    rid INT,
    rname VARCHAR(15) NOT NULL,
    rloc VARCHAR(20),
    CONSTRAINT pk_rid PRIMARY KEY(rid)
);


CREATE TABLE courses(
    cid INT,
    cname VARCHAR(15) NOT NULL,
    rid INT,
    fid INT,
    CONSTRAINT pk_cid PRIMARY KEY(cid),
    CONSTRAINT fk_rid FOREIGN KEY(rid)
    REFERENCES room(rid) ON DELETE SET NULL,
    CONSTRAINT fk_fid FOREIGN KEY(fid)
    REFERENCES faculty(fid) ON DELETE SET NULL
);

INSERT INTO room VALUES
    (100, 'Jasmin', '1st floor'),
    (101, 'Rose', '2nd floor'),
    (105, 'Lotus', '1st floor'),
    (103, 'Mogra', '1st floor')
;

INSERT INTO courses VALUES
    (121, 'DBDA', 100, 10),
    (131, 'DAC', 101, NULL),
    (141, 'DTISS', NULL, NULL),
    (151, 'DOIT', 105, 12)
;

SELECT * FROM room
WHERE rid NOT IN (
    SELECT rid FROM courses
    WHERE rid IS NOT NULL
);

SELECT * FROM room
WHERE rid IN (
    SELECT rid FROM courses
    WHERE rid IS NOT NULL
);

SELECT c.cname, f.fname, sp_skill1, sp_skill2
FROM courses AS c, faculty AS f
WHERE (sp_skill1 LIKE 'database' OR sp_skill2 LIKE 'database')
AND c.fid = f.fid;

SELECT c.cid, c.cname, f.fid, f.fname, r.rid, r.rname, r.rloc
FROM courses AS c, faculty AS f, room AS r
WHERE r.rid = c.rid AND f.fid = c.fid;
