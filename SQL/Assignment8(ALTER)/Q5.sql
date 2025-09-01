/* 5.create following cust_vehicle table and solve queries given below.
+-----+--------+-----+-----+-----------+
| tid | custid | vid | sid | buy_price |
+-----+--------+-----+-----+-----------+
|   1 |      1 |   1 |  10 |     75000 |
|   2 |      1 |   2 |  10 |    790000 |
|   3 |      2 |   3 |  11 |     80000 |
|   4 |      3 |   3 |  11 |     75000 |
|   5 |      3 |   2 |  10 |    800000 |
+-----+--------+-----+-----+-----------+
Give 5 star rating to all the vehicle with price greater than 90000.
+-----+--------+-----+-----+-----------+--------+
| tid | custid | vid | sid | buy_price | rating |
+-----+--------+-----+-----+-----------+--------+
|   1 |      1 |   1 |  10 |     75000 |   NULL |
|   2 |      1 |   2 |  10 |    790000 |      5 |
|   3 |      2 |   3 |  11 |     80000 |   NULL |
|   4 |      3 |   3 |  11 |     75000 |   NULL |
|   5 |      3 |   2 |  10 |    800000 |      5 |
+-----+--------+-----+-----+-----------+--------+
*/
UPDATE cust_vehicle
SET rating = 5
WHERE buy_price > 90000;
