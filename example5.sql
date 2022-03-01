USE sql_hr;

-- SELECT * FROM sql_hr.employees;

SELECT 
    e.employee_id, e.first_name, e.last_name, e.job_title, m.first_name as manager
FROM
    employees e
        LEFT JOIN
    employees m ON e.reports_to = m.employee_id
ORDER BY e.employee_id;