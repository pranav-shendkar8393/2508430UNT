/* 1.Consider following tables
product(pid, pname, price, qty)
product_details(pid, amt)
amt = product.price * qty
write a trigger which will 
calculate amt evry time any update is done in price of an item.
+------+-------------+-------+------+
| pid  | pname       | price | qty  |
+------+-------------+-------+------+
|  111 | pepsi       | 40.00 |   50 |
|  222 | sketch pens | 56.00 |  150 |
|  333 | lays        | 30.00 |   30 |
|  444 | nachos      | 50.00 |   50 |
+------+-------------+-------+------+
+------+---------+
| pid  | amt     |
+------+---------+
|  111 | 2000.00 |
|  222 | 8400.00 |
|  333 |  900.00 |
|  444 | 2500.00 |
+------+---------+
+------+---------+
| pid  | amt     |
+------+---------+
|  111 | 2750.00 |
|  222 | 8400.00 |
|  333 |  900.00 |
|  444 | 2500.00 |
+------+---------+
*/

CREATE TABLE product(
    pid INT,
    pname VARCHAR(32),
    price DECIMAL(7, 2),
    qty INT
);

CREATE TABLE product_details(
    pid INT,
    amt DECIMAL(7, 2)
);

INSERT INTO product VALUES
    (111, 'pepsi', 40, 50),
    (222, 'sketch pens', 56, 150),
    (333, 'lays', 30, 30),
    (444, 'nachos', 50, 50)
;

DELIMITER //
CREATE TRIGGER amount_cal_in
BEFORE INSERT ON product
FOR EACH ROW
BEGIN
    INSERT INTO product_details VALUES
        (NEW.pid, (NEW.price * NEW.qty));
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER amount_cal_up
BEFORE UPDATE ON product
FOR EACH ROW
BEGIN
    UPDATE product_details 
    SET amt = (NEW.price * NEW.qty)
    WHERE pid = NEW.pid;
END //
DELIMITER ;

UPDATE product  SET price = 55
WHERE pid = 1;