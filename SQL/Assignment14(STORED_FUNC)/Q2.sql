/* 2.Write a function to generate an email.
call the function in select clause.
email is generated as follows
    first 2 letters of name + last 2 letters of job + @knowit.com
EXAMPLE:
SMITH, CLERK = smrk@knowit.com
ALLEN, SALESMAN = alan@knowit.com

+-------------------+
| email(ename, job) |
+-------------------+
| smrk@knowit.com   |
| alan@knowit.com   |
| waan@knowit.com   |
| joer@knowit.com   |
| maan@knowit.com   |
| bler@knowit.com   |
| cler@knowit.com   |
| scst@knowit.com   |
| kint@knowit.com   |
| tuan@knowit.com   |
| adrk@knowit.com   |
| jark@knowit.com   |
| fost@knowit.com   |
| mirk@knowit.com   |
| NULL              |
| rast@knowit.com   |
+-------------------+

*/

DELIMITER //
DROP FUNCTION IF EXISTS email;
CREATE FUNCTION email(
    input_name VARCHAR(10),
    input_job VARCHAR(9)
) RETURNS VARCHAR(30)
BEGIN
    RETURN CONCAT(
        LOWER(SUBSTR(input_name, 1, 2)), 
        LOWER(SUBSTR(input_job, (LENGTH(input_job)-1), 2)),
        '@knowit.com');
END //
DELIMITER ;

        
