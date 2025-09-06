/* 5.Pass any number to the procedure and check if 
its a perfect number, if the number is perfect,
procedure should set value of out parameter as 1
otherwise as 0.

*/

-- USING WHILE LOOP
DELIMITER //
DROP PROCEDURE IF EXISTS q5while;
CREATE PROCEDURE q5while(
    IN input_n INT, 
    OUT output_n INT
)
BEGIN
    DECLARE sum INT DEFAULT 0;
    DECLARE i INT DEFAULT 1;
    
    WHILE i < input_n
    DO
        IF (input_n % i) = 0
        THEN
            SET sum = sum + i;
            SET i = i + 1;
        ELSE
            SET i = i + 1;
        END IF;
    END WHILE;

    IF sum = input_n
    THEN 
        SET output_n = 1;
    ELSE
        SET output_n = 0;
    END IF;
END //
DELIMITER ;

-- USING REPEAT LOOP
DELIMITER //
DROP PROCEDURE IF EXISTS q5repeat;
CREATE PROCEDURE q5repeat(
    IN input_n INT, 
    OUT output_n INT
)
BEGIN
    DECLARE sum INT DEFAULT 0;
    DECLARE i INT DEFAULT 1;
    
    REPEAT
        IF (input_n % i) = 0
        THEN
            SET sum = sum + i;
            SET i = i + 1;
        ELSE
            SET i = i + 1;
        END IF;
    UNTIL
        i = input_n
    END REPEAT;

    IF sum = input_n
    THEN 
        SET output_n = 1;
    ELSE
        SET output_n = 0;
    END IF;
END //
DELIMITER ;


-- USING INFINITE LOOP
DELIMITER //
DROP PROCEDURE IF EXISTS q5loop;
CREATE PROCEDURE q5loop(
    IN input_n INT, 
    OUT output_n INT
)
BEGIN
    DECLARE sum INT DEFAULT 0;
    DECLARE i INT DEFAULT 1;
    
    perfect:LOOP
        IF (input_n % i) = 0
        THEN
            SET sum = sum + i;
            SET i = i + 1;
        ELSE
            SET i = i + 1;
        END IF;

        IF i = input_n
        THEN 
            LEAVE perfect;
        END IF;
    END LOOP perfect;
    
    IF sum = input_n
    THEN 
        SET output_n = 1;
    ELSE
        SET output_n = 0;
    END IF;
END //
DELIMITER ;