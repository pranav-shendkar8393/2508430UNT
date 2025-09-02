/* 5.Find how many employees are qorking under same manager
display mgr and the count.
+------+-----------------+
| mgr  | employees count |
+------+-----------------+
| NULL |               0 |
| 7566 |               2 |
| 7698 |               5 |
| 7782 |               1 |
| 7788 |               1 |
| 7839 |               3 |
| 7902 |               1 |
+------+-----------------+
*/
SELECT DISTINCT(mgr),
COUNT(mgr) OVER(PARTITION BY mgr) AS "employees count"
FROM emp;
