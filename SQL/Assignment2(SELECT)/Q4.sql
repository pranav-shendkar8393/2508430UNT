/*4.
display vid, vname, price and details from table vehicle with column heading as Vehicle id,
vehicle name, price, discount and details.
+------------+---------------+--------+----------+-------------------------------+
| Vehicle id | Vehicle name  | price  | discount | details                       |
+------------+---------------+--------+----------+-------------------------------+
|          1 | Activa        |  80000 |    10.00 | Two wheeler.Sturdy.milage30km |
|          2 | Santro        |  95000 |    20.00 | Product of Hyundai            |
|          3 | Yamaha        | 160000 |     5.00 | Sturdy and good milage        |
|          4 | i-10          | 300000 |     8.00 | Good small car                |
|          5 | WaganR        | 250000 |    10.00 | Good milage car               |
|          6 | Hero Splendor |  75000 |     9.00 | Best bike                     |
|          7 | Royal Enfield | 190000 |     5.00 | a royal bike                  |
+------------+---------------+--------+----------+-------------------------------+
*/

SELECT vid AS "Vehicle id", vname AS "Vehicle name", price, discount, details FROM vehicle;