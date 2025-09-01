/* 4.Add following vehicles in vehicle table.
+-----+---------------+------------------+--------+----------+--------+-------------------------------+
| vid | vname         | category         | price  | discount | milage | details                       |
+-----+---------------+------------------+--------+----------+--------+-------------------------------+
|   1 | Activa        | NULL             |  80000 |    10.00 |     35 | Two wheeler.Sturdy.milage30km |
|   2 | Santro        | NULL             |  95000 |    20.00 |     20 | Product of Hyundai            |
|   3 | Yamaha        | NULL             | 160000 |     5.00 |     70 | Sturdy and good milage        |
|   4 | i-10          | NULL             | 300000 |     8.00 |     18 | Good small car                |
|   5 | WaganR        | NULL             | 250000 |    10.00 |     25 | Good milage car               |
|   6 | Hero Splendor | NULL             |  75000 |     9.00 |     65 | Best bike                     |
|   7 | Royal Enfield | NULL             | 190000 |     5.00 |     40 | a royal bike                  |
|   8 | Passion       | Bike             |  90000 |     NULL |     50 | For passionate riders         |
|   9 | Honda City    | Car              | 140000 |     NULL |     20 | Best in Honda World           |
|  10 | TVS iCube     | Electric Scooter | 140000 |     NULL |     40 | Best in new world             |
+-----+---------------+------------------+--------+----------+--------+-------------------------------+
*
ALTER TABLE vehicle
ADD category VARCHAR(64) AFTER vname;

INSERT INTO vehicle VALUES
    (8, 'Passion', 'Bike', 90000, NULL, 50, 'For passionate riders'),
	(9, 'Honda City', 'Car', 140000, NULL, 20, 'Best in Honda World'),
	(10, 'TVS iCube', 'Electric Scooter', 140000, NULL, 40, 'Best in new world');