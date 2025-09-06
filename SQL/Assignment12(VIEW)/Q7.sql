/* 7.Check the views created

SHOW FULL TABLES WHERE Table_type LIKE 'VIEW';
+-----------------------+------------+
| Tables_in_assignment1 | Table_type |
+-----------------------+------------+
| emp_v20               | VIEW       |
| emp_view              | VIEW       |
| new_emp_v20           | VIEW       |
+-----------------------+------------+

SHOW FULL TABLES;
+-----------------------+------------+
| Tables_in_assignment1 | Table_type |
+-----------------------+------------+
| bonus                 | BASE TABLE |
| cust_vehicle          | BASE TABLE |
| customer              | BASE TABLE |
| dept                  | BASE TABLE |
| emp                   | BASE TABLE |
| emp_v20               | VIEW       |
| emp_view              | VIEW       |
| employee              | BASE TABLE |
| new_emp_v20           | VIEW       |
| salesman              | BASE TABLE |
| salgrade              | BASE TABLE |
| vehicle               | BASE TABLE |
+-----------------------+------------+
*/
SHOW FULL TABLES WHERE Table_type LIKE 'VIEW';
