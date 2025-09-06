/* 3.Write a stored procedure which will 
find AVG salary of any deptno passed to it.
Pass deptno as in parameter and AVG(sal) as out parameter.
+---------+
| @s      |
+---------+
| 3479.17 |
+---------+
*/

DELIMITER //
DROP PROCEDURE IF EXISTS q3;
CREATE PROCEDURE q3(
    IN deptno_input INT, 
    OUT avg_sal_out DECIMAL(7, 2)
)
BEGIN
    SELECT AVG(sal) INTO avg_sal_out FROM emp
    WHERE deptno = deptno_input;
END //
DELIMITER ;