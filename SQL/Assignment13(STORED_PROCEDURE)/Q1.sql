/* 1.Write a stored procedure which will find AVG of all salaries in the table.
Display AVG salary in the procedure.
+-------------+
| AVG(sal)    |
+-------------+
| 2601.666667 |
+-------------+
*/

DELIMITER //
DROP PROCEDURE IF EXISTS q1;
CREATE PROCEDURE q1()
BEGIN
    SELECT AVG(sal) FROM emp;
END //
DELIMITER ;