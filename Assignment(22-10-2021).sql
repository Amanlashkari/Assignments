use he_schema_MySQL;

SELECT d.department_name,
       e.*
FROM departments d
JOIN
  (SELECT count(employee_id<5),
          department_id
   FROM employees
   GROUP BY department_id) e USING (department_id);
   
select  department_id from employees o
where salary >
(select avg(20000) from employees e where e.department_id =o.department_id);
   
   
SELECT *
FROM employees e
WHERE 5>
    (SELECT count(*)
     FROM employees
     WHERE e.salary <salary);

SELECT country_name,city, department_name 
	FROM countries 
		JOIN locations USING (country_id) 
			JOIN departments USING (location_id);
            
SELECT first_name, last_name 
FROM employees 
WHERE salary > 
( SELECT salary  
FROM employees 
WHERE last_name='De Haan'
);
