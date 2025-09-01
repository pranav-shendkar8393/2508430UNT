/* 3. consider vehicle, customer and salesman table 
from previous assignment and solve below queries.
1. make vid, custid and sid as primary key inn their respective table vehicle, customer 
and salesman.
2.display tid, custid, customer name and buy_price.
+-----+--------+--------+-----------+
| tid | custid | cname  | buy_price |
+-----+--------+--------+-----------+
|   1 |      1 | Nilima |     75000 |
|   2 |      1 | Nilima |    790000 |
|   3 |      2 | Ganesh |     80000 |
|   4 |      3 | Kishor |     75000 |
|   5 |      3 | Kishor |    800000 |
+-----+--------+--------+-----------+
*/
ALTER TABLE vehicle
ADD CONSTRAINT pk_vid PRIMARY KEY(vid);

ALTER TABLE customer
ADD CONSTRAINT pk_custid PRIMARY KEY(custid);

ALTER TABLE salesman
ADD CONSTRAINT pk_sid PRIMARY KEY(sid);


SELECT cn.tid, cn.custid, c.cname, cn.buy_price
FROM cust_vehicle_new AS cn, customer AS c
WHERE cn.custid = c.custid;