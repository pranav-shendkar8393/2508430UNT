/* 4. Create table emp_data(
    eno PK auto inc,
    ename,
    job,
    sal)Add following data
('Akshay', 'Developer', 30000),
('Anika', 'Analyst', 50000),
('Radhika', 'Manager', 65000);
Write a trigger to keep log of the data if any updation 
is done in the the salary 
keep data in emp_log(eno, ename, job, sal, osal, nsal)
+------+-------+---------+----------+----------+
| eno  | ename | job     | osal     | nsal     |
+------+-------+---------+----------+----------+
|    2 | Anika | Analyst | 50000.00 | 55000.00 |
+------+-------+---------+----------+----------+
*/

CREATE TABLE emp_data(
    eno INT AUTO_INCREMENT PRIMARY KEY,
    ename VARCHAR(32),
    job VARCHAR(32),
    sal DECIMAL(7, 2)
);


INSERT INTO emp_data(ename, job, sal) VALUES
('Akshay', 'Developer', 30000),
('Anika', 'Analyst', 50000),
('Radhika', 'Manager', 65000);

CREATE TABLE emp_log(
    eno INT,
    ename VARCHAR(32),
    job VARCHAR(32),
    osal DECIMAL(7, 2),
    nsal DECIMAL(7, 2)
);

DELIMITER //
CREATE TRIGGER emplog
AFTER UPDATE ON emp_data
FOR EACH ROW
BEGIN
    INSERT INTO emp_log
    VALUES(OLD.eno, OLD.ename, OLD.job, OLD.sal, NEW.sal);
END//
DELIMITER ;


UPDATE emp_data SET 
    sal = 55000
    WHERE eno = 2;