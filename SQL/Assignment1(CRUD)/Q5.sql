/*
5.
Display information of all bikes.
+------+---------------+--------+----------+--------+-------------------------------+
| vid  | vname         | price  | discount | milage | details                       |
+------+---------------+--------+----------+--------+-------------------------------+
|    1 | Activa        |  80000 |    10.00 |     35 | Two wheeler.Sturdy.milage30km |
|    3 | Yamaha        | 160000 |     5.00 |     70 | Sturdy and good milage        |​
|    6 | Hero Splendor |  75000 |     9.00 |     65 | Best bike                     |
|    7 | Royal Enfield | 190000 |     5.00 |     40 | a royal bike                  |
+------+---------------+--------+----------+--------+-------------------------------+
*/

SELECT * FROM vehicle
WHERE vid IN (1, 3, 6, 7);
