/*
9.Display all vehicles whose price is less than 100000.
+------+---------------+-------+----------+--------+-------------------------------+
| vid  | vname         | price | discount | milage | details                       |
+------+---------------+-------+----------+--------+-------------------------------+
|    1 | Activa        | 80000 |    10.00 |     35 | Two wheeler.Sturdy.milage30km |​
|    2 | Santro        | 95000 |    20.00 |     20 | Product of Hyundai            |
|    6 | Hero Splendor | 75000 |     9.00 |     65 | Best bike                     |
+------+---------------+-------+----------+--------+-------------------------------+
*/

SELECT * FROM vehicle
WHERE price < 100000;
