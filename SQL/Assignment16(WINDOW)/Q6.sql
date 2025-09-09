/* 6. For each day, find the total sales amount
and the total sales amount from previous day.
+------------+---------+--------------+
| sale_date  | sum_a   | previous_day |
+------------+---------+--------------+
| 2024-01-01 | 1200.00 |         NULL |
| 2024-01-02 |  100.00 |      1200.00 |
| 2024-01-03 | 1200.00 |       100.00 |
| 2024-01-04 |  300.00 |      1200.00 |
| 2024-01-05 |  100.00 |       300.00 |
| 2024-01-06 |  300.00 |       100.00 |
+------------+---------+--------------+
*/
SELECT *, LAG(tmp.sum_a)OVER(ORDER BY sale_date) AS previous_day
FROM (
    SELECT DISTINCT sale_date, SUM(amount)OVER(PARTITION BY sale_date) AS sum_a
    FROM sales_table
) AS tmp;
