select * from employees;

select * from employees 
where phone_number 
and department_id=10;

select * from employees 
where salary>10000 
and commission_pct>0.2;

select * from employees 
where department_id in(10,20,50);

select * from employees 
where first_name like 'K%n';

select last_name from employees 
where last_name like 'oc%';

select * from employees 
where commission_pct IS NULL;

select distinct manager_id from employees;

select * from employees order by salary ASC,last_name DESC;

select * from employees 
where department_id=50 
and salary>5000;

select * from employees 
where job_id='SA_REP' 
or job_id='SA_MAN';