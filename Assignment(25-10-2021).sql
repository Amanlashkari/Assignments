use hr;

prepare insertstmt from 'insert into employees values(?,?,?,?,?,?,?,?,?)';
set @employee_id = 999;
set @first_name= 'Rohan';
set @last_name='Shah';
set @email='rohan.shah@hotmail.com';
set @phone_number=230-987-111;
set @salary=45000;
set @commission_pct=0.2;
set @manager_id=102;
set @department_id=10;

execute insertstmt using @employee_id,@first_name,@last_name,@email,@phone_number,@salary,@commission_pct,@manager_id,@department_id;

prepare deletestmt from 'delete from employees where employee_id=?';
set @employee_id=101;
execute deletestmt using @employee_id;

prepare updatestmt from 'update employees
						set email=?
                        set phone_number=?';
set @email='official@yash.com';
set @phone_number ='789-778-221';

execute updatestmt using @email,@phone_number;

show databases;
use inductionbatchdb;
create table States
(State_id varchar(10) primary key,
State_name varchar(50));

insert into States(State_id, State_name) values ('S001', 'Madhya Pradesh'),
						  ('S002', 'Uttar Pradesh');
					
replace into States values('S001', 'Madhya Pradesh');

select * from States; 

create table Student
(Student_id int,
Student_name varchar(40),
Fees double);

insert into Student(Student_id, Student_name,Fees) values(1001, 'Alex Hales', 23000),
														 (1002, 'Sam Billings', 45000);
														
replace Student
set Student_id=1003,
	Student_name='Jason Roy',
    Fees=34000;
    
select * from Student;


