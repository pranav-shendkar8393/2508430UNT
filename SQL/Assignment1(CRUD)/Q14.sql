/*14.If buying price of the vehicle is 75000 then change it to 80000.
+------+---------------+--------+----------+--------+-------------------------------+
| vid  | vname         | price  | discount | milage | details                       |
+------+---------------+--------+----------+--------+-------------------------------+
|    1 | Activa        |  80000 |    10.00 |     35 | Two wheeler.Sturdy.milage30km |
|    2 | Santro        |  95000 |    20.00 |     20 | Product of Hyundai            |
|    3 | Yamaha        | 160000 |     5.00 |     70 | Sturdy and good milage        |
|    4 | i-10          | 300000 |     8.00 |     18 | Good small car                |
|    5 | WaganR        | 250000 |    10.00 |     25 | Good milage car               |
|    6 | Hero Splendor |  80000 |     9.00 |     65 | Best bike                     |
|    7 | Royal Enfield | 190000 |     5.00 |     40 | a royal bike                  |
+------+---------------+--------+----------+--------+-------------------------------+
*/
UPDATE vehicle SET price='80000'
WHERE price='75000';
