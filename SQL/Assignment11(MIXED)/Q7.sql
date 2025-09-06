/* 7.Create following table and insert the required data.
+------+--------+------+-------------+
| pid  | pname  | sid  | pname       |
+------+--------+------+-------------+
|    1 | pen    |    2 | Sketch pens |
|    2 | pencil |    3 | pen         |
|    2 | pencil |    3 | eraser      |
|    3 | eraser |    2 | pencil      |
+------+--------+------+-------------+
*/

CREATE TABLE product_table(
    pid INT,
    pname VARCHAR(20),
    sid INT
);

INSERT INTO product_table VALUES
    (1, 'pen', 2),
    (2, 'pencil', 3),
    (3, 'eraser', 2),
    (4, 'Sketch pens', 1);

SELECT p.pid, p.pname, p.sid, p1.pname
FROM product_table AS p
JOIN product_table AS p1
ON p1.sid = p.pid
ORDER BY p.pid;