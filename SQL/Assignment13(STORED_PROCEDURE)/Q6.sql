/* 6.Pass empno as a parameter to the procedure.
if empno is found in the table then,
display corresponding salary out of the procedure.
if empno is not found in the table
then, display 0 out of the parameter.

*/

DELIMITER //
DROP PROCEDURE IF EXISTS q6;
CREATE PROCEDURE q6(
    IN empno_input INT, 
    OUT sal_out DECIMAL(7, 2)
)
BEGIN
    DECLARE get_empno INT;
    SELECT empno INTO get_empno FROM emp WHERE empno = empno_input;
    IF empno_input = get_empno
    THEN
        SELECT sal FROM emp WHERE empno = empno_input;
    ELSE
        SET sal_out = 0;
    END IF;
END //
DELIMITER ;