/* 2. consider following table 
emp_wage(eno, ename, sal, over_time)
eno : pk auto increment
write a trigger which will insert over_time
as 400
if value of over_time entered null
+-----+-------+----------+-----------+
| eno | ename | sal      | over_time |
+-----+-------+----------+-----------+
|   1 | Geeta |  5000.00 |       200 |
|   2 | Seeta | 15000.00 |       300 |
|   3 | Amit  |  5000.00 |       400 |
+-----+-------+----------+-----------+
*/


CREATE TABLE emp_wage(
    eno INT AUTO_INCREMENT PRIMARY KEY,
    ename VARCHAR(32),
    sal DECIMAL(7, 2),
    over_time INT
);

DELIMITER //
CREATE TRIGGER overtime
BEFORE INSERT ON emp_wage
FOR EACH ROW
BEGIN
    IF NEW.over_time IS NULL
    THEN 
        SET NEW.over_time = 400;
    END IF;
END //
DELIMITER ;



INSERT INTO emp_wage(ename, sal, over_time)
VALUES('Geeta', 5000, 200),
      ('Seeta', 15000, 300),
      ('Amit', 5000, NULL)
;