/*
display custid, customer name, vid, vehicle name, sid, salesman name and buy_price fror vehicle.
+---------+--------+--------+------+--------+-----------+
| custid | cname  | vname  | sid  | sname  | buy_price |
+---------+--------+--------+------+--------+-----------+
|       1 | Nilima | Activa |   10 | Ramesh |     75000 |
|       3 | Kishor | Santro |   10 | Ramesh |    800000 |
|       1 | Nilima | Santro |   10 | Ramesh |    790000 |
|       3 | Kishor | Yamaha |   11 | Seema  |     75000 |
|       2 | Ganesh | Yamaha |   11 | Seema  |     80000 |
+---------+--------+--------+------+--------+-----------+
*/
SELECT cn.custid, c.cname, v.vname, s.sid, s.sname, cn.buy_price
FROM cust_vehicle_new AS cn, vehicle AS v, salesman AS s, customer AS c
WHERE cn.custid = c.custid AND cn.vid = v.vid AND cn.sid = s.sid;