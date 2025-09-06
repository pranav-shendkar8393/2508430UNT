/* 2.Write a stored procedure which will find AVG salary
of deptno 20.
Display AVG salary out of the procedure.
+---------+
| @s      |
+---------+
| 3479.17 |
+---------+
*/

DELIMITER //
DROP PROCEDURE IF EXISTS q2;
CREATE PROCEDURE q2(OUT avg_sal_out DECIMAL(7, 2))
BEGIN
    SELECT AVG(sal) INTO avg_sal_out FROM emp
    WHERE deptno = '20';
END //
DELIMITER ;