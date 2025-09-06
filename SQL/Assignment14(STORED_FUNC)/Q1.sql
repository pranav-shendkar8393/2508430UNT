/* 1.Write a function to calculate total salary of an employee.
Call the function in select clause.
total_sal = sal + comm
+------------------+
| total(sal, comm) |
+------------------+
|           800.00 |
|          1900.00 |
|          1750.00 |
|          2975.00 |
|          2650.00 |
|          2850.00 |
|          2450.00 |
|          3000.00 |
|          5000.00 |
|          1500.00 |
|          1100.00 |
|           950.00 |
|          3000.00 |
|          1300.00 |
|         10300.00 |
|             0.00 |
+------------------+
*/

DELIMITER //
DROP FUNCTION IF EXISTS total;
CREATE FUNCTION total(
    input_sal DECIMAL(7, 2),
    input_comm DECIMAL(7, 2)
) RETURNS DECIMAL(7, 2)
BEGIN
    RETURN IFNULL(input_sal, 0) + IFNULL(input_comm, 0);
END //
DELIMITER ;