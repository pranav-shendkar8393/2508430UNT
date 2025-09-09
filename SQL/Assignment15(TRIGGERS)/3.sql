/* 3. Consider following table
    order_master(oid, pname, qty, price)
    oid: pk auto inc
    order_log(oid, odate, amt)
write a trigger which will create a log
of all the orders once order is placed.
+------+------------+---------+
| oid  | odate      | amt     |
+------+------------+---------+
|    1 | 2025-09-08 | 2000.00 |
|    2 | 2025-09-08 | 8400.00 |
|    3 | 2025-09-08 |  900.00 |
|    4 | 2025-09-08 | 2500.00 |
+------+------------+---------+
*/

CREATE TABLE order_master(
    oid INT AUTO_INCREMENT PRIMARY KEY,
    pname VARCHAR(32),
    qty INT,
    price DECIMAL(7, 2)
);

CREATE TABLE order_log(
    oid INT,
    odate DATE,
    amt DECIMAL(7, 2)
);


DELIMITER //
CREATE TRIGGER logs
AFTER INSERT ON order_master
FOR EACH ROW
BEGIN
    INSERT INTO order_log(oid, odate, amt)
    VALUES(NEW.oid, CURDATE(), (NEW.price * NEW.qty));
END //
DELIMITER;


INSERT INTO order_master(pname, qty, price)
VALUES('pepsi', 40, 50),
    ('sketch pens', 56, 150),
    ('lays', 30, 30),
    ('nachos', 50, 50);