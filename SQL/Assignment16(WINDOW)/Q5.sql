/* 5.For every user, List their salary and
highest salary in their respective department.
+-------------+---------------+------------+----------+---------------+
| employee_id | employee_name | department | salary   | high_sal_dept |
+-------------+---------------+------------+----------+---------------+
|           5 | Eve           | HR         | 55000.00 |      62000.00 |
|           6 | Frank         | HR         | 62000.00 |      62000.00 |
|           3 | Charlie       | IT         | 80000.00 |      95000.00 |
|           4 | David         | IT         | 95000.00 |      95000.00 |
|           8 | Heildi        | IT         | 80000.00 |      95000.00 |
|           1 | Alice         | Sales      | 60000.00 |      75000.00 |
|           2 | Bob           | Sales      | 75000.00 |      75000.00 |
|           7 | Grace         | Sales      | 60000.00 |      75000.00 |
+-------------+---------------+------------+----------+---------------+
*/
SELECT *, MAX(salary)OVER(PARTITION BY department) AS high_sal_dept  
FROM emp_table;
