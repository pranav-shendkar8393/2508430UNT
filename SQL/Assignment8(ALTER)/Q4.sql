/* 4.create following cust_vehicle table and solve queries given below.
+-----+--------+-----+-----+-----------+
| tid | custid | vid | sid | buy_price |
+-----+--------+-----+-----+-----------+
|   1 |      1 |   1 |  10 |     75000 |
|   2 |      1 |   2 |  10 |    790000 |
|   3 |      2 |   3 |  11 |     80000 |
|   4 |      3 |   3 |  11 |     75000 |
|   5 |      3 |   2 |  10 |    800000 |
+-----+--------+-----+-----+-----------+
add new column by name rating with int data type in cust_vehicle table.
+-----+--------+-----+-----+-----------+--------+
| tid | custid | vid | sid | buy_price | rating |
+-----+--------+-----+-----+-----------+--------+
|   1 |      1 |   1 |  10 |     75000 |   NULL |
|   2 |      1 |   2 |  10 |    790000 |   NULL |
|   3 |      2 |   3 |  11 |     80000 |   NULL |
|   4 |      3 |   3 |  11 |     75000 |   NULL |
|   5 |      3 |   2 |  10 |    800000 |   NULL |
+-----+--------+-----+-----+-----------+--------+
*/
CREATE TABLE cust_vehicle(
    tid INT PRIMARY KEY,
	custid INT NOT NULL,
	vid INT NOT NULL,
	sid INT NOT NULL,
	buy_price INT NOT NULL CHECK(buy_price > 0)
);

INSERT INTO cust_vehicle VALUES
    (1, 1, 1, 10, 75000),
	(2, 1, 2, 10, 790000),
	(3, 2, 3, 11, 80000),
	(4, 3, 3, 11, 75000),
	(5, 3, 2, 10, 800000);

ALTER TABLE cust_vehicle
ADD rating INT;
