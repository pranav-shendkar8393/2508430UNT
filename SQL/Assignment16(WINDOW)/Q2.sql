/* 2.For each department find the top 3 employees with highest salaries.
if two employees have same salary ,
they should recieve the same rank.
+-------------+---------------+------------+----------+-----+
| employee_id | employee_name | department | salary   | rnk |
+-------------+---------------+------------+----------+-----+
|           6 | Frank         | HR         | 62000.00 |   1 |
|           5 | Eve           | HR         | 55000.00 |   2 |
|           4 | David         | IT         | 95000.00 |   1 |
|           3 | Charlie       | IT         | 80000.00 |   2 |
|           8 | Heildi        | IT         | 80000.00 |   2 |
|           2 | Bob           | Sales      | 75000.00 |   1 |
|           1 | Alice         | Sales      | 60000.00 |   2 |
|           7 | Grace         | Sales      | 60000.00 |   2 |
+-------------+---------------+------------+----------+-----+
*/

SELECT *,
RANK()OVER(PARTITION BY department ORDER BY salary DESC) AS rnk 
FROM emp_table;
