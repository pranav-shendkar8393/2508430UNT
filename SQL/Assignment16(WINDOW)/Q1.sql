/* 1. Create following tables.
+-------------+---------------+------------+----------+
| employee_id | employee_name | department | salary   |
+-------------+---------------+------------+----------+
|           1 | Alice         | Sales      | 60000.00 |
|           2 | Bob           | Sales      | 75000.00 |
|           3 | Charlie       | IT         | 80000.00 |
|           4 | David         | IT         | 95000.00 |
|           5 | Eve           | HR         | 55000.00 |
|           6 | Frank         | HR         | 62000.00 |
|           7 | Grace         | Sales      | 60000.00 |
|           8 | Heildi        | IT         | 80000.00 |
+-------------+---------------+------------+----------+
+---------+------------+--------------+---------+
| sale_id | sale_date  | product_name | amount  |
+---------+------------+--------------+---------+
|       1 | 2024-01-01 | Laptop       | 1200.00 |
|       2 | 2024-01-02 | Mouse        |   25.00 |
|       3 | 2024-01-02 | Keyboard     |   75.00 |
|       4 | 2024-01-03 | Laptop       | 1200.00 |
|       5 | 2024-01-04 | Monitor      |  300.00 |
|       6 | 2024-01-05 | Mouse        |   25.00 |
|       7 | 2024-01-05 | Keyboard     |   75.00 |
|       8 | 2024-01-06 | Monitor      |  300.00 |
+---------+------------+--------------+---------+
*/

CREATE TABLE emp_table(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

CREATE TABLE sales_table(
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    product_name VARCHAR(50),
    amount DECIMAL(10, 2)
);

INSERT INTO emp_table VALUES
(1, 'Alice', 'Sales', 60000), 
(2, 'Bob', 'Sales', 75000), 
(3, 'Charlie', 'IT', 80000), 
(4, 'David', 'IT', 95000), 
(5, 'Eve', 'HR', 55000), 
(6, 'Frank', 'HR', 62000), 
(7, 'Grace', 'Sales', 60000), 
(8, 'Heildi', 'IT', 80000); 

INSERT INTO sales_table VALUES
(1, '2024-01-01', 'Laptop', 1200),
(2, '2024-01-02', 'Mouse', 25),
(3, '2024-01-02', 'Keyboard', 75),
(4, '2024-01-03', 'Laptop', 1200),
(5, '2024-01-04', 'Monitor', 300),
(6, '2024-01-05', 'Mouse', 25),
(7, '2024-01-05', 'Keyboard', 75),
(8, '2024-01-06', 'Monitor', 300);  
