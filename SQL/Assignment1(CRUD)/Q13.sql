/*13.Delete customer from area Aundh whose name is Priya
+--------+--------+----------+
| custid | cname  | location |
+--------+--------+----------+
|      1 | Nilima | Pimpri   |
|      2 | Ganesh | Pune     |
|      3 | Kishor | Kothrud  |
|      5 | Geeta  | Pimpri   |
|      6 | Raj    | Aundh    |
|      7 | Yash   | Aundh    |
+--------+--------+----------+
*/
DELETE FROM customer
WHERE cname='Priya' AND location='Aundh';
