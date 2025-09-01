/*1.
create following table. apply the following constraints.
- tid is a transaction id is a primary key for cust_vehicle.
- all other entries in the table are not null values.
- buy_price is greater than 0.
+-----+---------+-----+-----+-----------+
| tid | custid | vid | sid | buy_price |
+-----+---------+-----+-----+-----------+
|   1 |       1 |   1 |  10 |     75000 |
|   2 |       1 |   2 |  10 |    790000 |
|   3 |       2 |   3 |  11 |     80000 |
|   4 |       3 |   3 |  11 |     75000 |
|   5 |       3 |   2 |  10 |    800000 |
+-----+---------+-----+-----+-----------+
*/

CREATE TABLE cust_vehicle_new(
    tid INT PRIMARY KEY,
	custid INT NOT NULL,
	vid INT NOT NULL,
	sid INT NOT NULL,
	buy_price INT NOT NULL CHECK(buy_price > 0)
);

INSERT INTO cust_vehicle_new VALUES
    (1, 1, 1, 10, 75000),
	(2, 1, 2, 10, 790000),
	(3, 2, 3, 11, 80000),
	(4, 3, 3, 11, 75000),
	(5, 3, 2, 10, 800000);
