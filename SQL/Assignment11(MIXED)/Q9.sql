/* 9. List all pid, pname, cid, cname with category chips
+-----+----------+------+-------+------+------+
| pid | pname    | qty  | price | cid  | sid  |
+-----+----------+------+-------+------+------+
| 123 | lays     |   30 | 30.00 |    1 |   12 |
| 134 | nachos   |   50 | 50.00 |    1 |   12 |
| 125 | pringles |   40 | 60.00 |    1 |   14 |
+-----+----------+------+-------+------+------+
*/
SELECT * FROM product
WHERE cid = (
    SELECT cid FROM category 
    WHERE cname = 'chips'
);