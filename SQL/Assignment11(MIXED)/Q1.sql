/* 1.List all rooms which are allocated or not allocated to any courses.
Use joins.
+-----+--------+------+-------+
| rid | rname  | cid  | cname |
+-----+--------+------+-------+
| 100 | Jasmin |  121 | DBDA  |
| 101 | Rose   |  131 | DAC   |
| 103 | Mogra  | NULL | NULL  |
| 105 | Lotus  |  151 | DOIT  |
+-----+--------+------+-------+
*/

SELECT r.rid, r.rname, c.cid, c.cname FROM room AS r
LEFT JOIN courses AS c
ON r.rid = c.rid;