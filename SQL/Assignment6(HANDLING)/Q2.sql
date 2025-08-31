/*2.
display tid, custid, customer name and buy_price.
+-----+--------+--------+
| tid | custid | cname  |
+-----+--------+--------+
|   1 |      1 | Nilima |
|   2 |      1 | Nilima |
|   3 |      2 | Ganesh |
|   4 |      3 | Kishor |
|   5 |      3 | Kishor |
+-----+--------+--------+
*/

SELECT cn.tid, c.custid,c.cname 
FROM cust_vehicle_new AS cn, customer AS c
WHERE cn.custid = c.custid;