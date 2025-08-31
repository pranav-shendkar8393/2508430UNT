/*
7.Display vid, vname, price, details and total price for each vehicle.
total price = price - discount
+------+---------------+--------+-------------------------------+---------------+
| vid  | vname         | price  | details                       | total price   |
+------+---------------+--------+-------------------------------+---------------+
|    1 | Activa        |  80000 | Two wheeler.Sturdy.milage30km |  72000.000000 |
|    2 | Santro        |  95000 | Product of Hyundai            |  76000.000000 |
|    3 | Yamaha        | 160000 | Sturdy and good milage        | 152000.000000 |
|    4 | i-10          | 300000 | Good small car                | 276000.000000 |​
|    5 | WaganR        | 250000 | Good milage car               | 225000.000000 |
|    6 | Hero Splendor |  75000 | Best bike                     |  68250.000000 |
|    7 | Royal Enfield | 190000 | a royal bike                  | 180500.000000 |
+------+---------------+--------+-------------------------------+---------------+
*/

SELECT vid, vname, price, details, price-(price*(discount/100)) AS "total price" FROM vehicle;
