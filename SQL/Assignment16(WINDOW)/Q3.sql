/* 3.Calculate cumulative total sales amount overtime.
the cumulative total should be ordered by sale_date 
and then sale_id.
+---------+------------+--------------+---------+---------+
| sale_id | sale_date  | product_name | amount  | r_total |
+---------+------------+--------------+---------+---------+
|       1 | 2024-01-01 | Laptop       | 1200.00 | 1200.00 |
|       2 | 2024-01-02 | Mouse        |   25.00 | 1225.00 |
|       3 | 2024-01-02 | Keyboard     |   75.00 | 1300.00 |
|       4 | 2024-01-03 | Laptop       | 1200.00 | 2500.00 |
|       5 | 2024-01-04 | Monitor      |  300.00 | 2800.00 |
|       6 | 2024-01-05 | Mouse        |   25.00 | 2825.00 |
|       7 | 2024-01-05 | Keyboard     |   75.00 | 2900.00 |
|       8 | 2024-01-06 | Monitor      |  300.00 | 3200.00 |
+---------+------------+--------------+---------+---------+
*/

SELECT *,
    SUM(amount) OVER (ORDER BY sale_date, sale_id) AS r_total
FROM sales_table;
