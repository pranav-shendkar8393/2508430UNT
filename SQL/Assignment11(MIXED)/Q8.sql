/* 8. Write a query to display 
prodid, pname, qty, price, sid, sname and city for all products
having price greater than 50.
+-----+-------------+------+--------+-----+-------+---------+
| pid | pname       | qty  | price  | sid | sname | city    |
+-----+-------------+------+--------+-----+-------+---------+
| 213 | sketch pens |   56 | 150.00 |  11 | Rahul | Pune    |
| 125 | pringles    |   40 |  60.00 |  14 | Arnav | Amravti |
| 124 | dairy milk  |   40 |  60.00 |  14 | Arnav | Amravti |
+-----+-------------+------+--------+-----+-------+---------+
*/

SELECT p.pid, p.pname, p.qty, p.price, s.sid, s.sname, s.city FROM product AS p
JOIN salesman AS s
ON p.sid = s.sid
AND p.price > 50;