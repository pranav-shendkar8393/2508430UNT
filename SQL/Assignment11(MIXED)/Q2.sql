/* 2. Display all products sold by kirti.
+-----+--------+------+-------+------+------+
| pid | pname  | qty  | price | cid  | sid  |
+-----+--------+------+-------+------+------+
| 123 | lays   |   30 | 30.00 |    1 |   12 |
| 134 | nachos |   50 | 50.00 |    1 |   12 |
+-----+--------+------+-------+------+------+
*/

SELECT * FROM product
WHERE sid = (
    SELECT sid FROM salesman
    WHERE sname = 'Kirti'
);