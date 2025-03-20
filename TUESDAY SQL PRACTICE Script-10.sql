---HR wants to track employees hired in the last year for performance reviews. 
select first_name,last_name,department_id,hire_date
from employees
where DATEDIFF(now(),hire_date)<=365;

---
select first_name,last_name, department_id,hire_date
from employees
where hire_date>= DATE_SUB(now(),interval 1 year);


---Management wants to group employees into salary categories for compensation 
planning: Low Salary: Below $50,000, Medium Salary: Between $50,000 and $200,000, High Salary: Above $200,000 
Select first_name, salary,
CASE
	when salary<50000 then'low_salary'
	when salary<=200000 then 'medium_salary'
	when salary>200000 then 'high_salary'
	else 'null'
end as salary_categories
from employees;


---HR needs to retrieve employees based on department names instead of department IDs.
create procedure GetEmployeesByDepartmentNameKate(department_name varchar (100))
begin
	select first_name,last_name,salary,job_title
	from employees
	join departments
	using (department_id);
end
---Calling the procedure
call GetEmployeesByDepartmentNameKate('Software Engineer');
---dropping procedure
drop procedure GetEmployeesByDepartmentNameKate

---creating the procedure accurately
create procedure GetEmployeesByDepartmentNameKate(department_name varchar (100))
begin
	select first_name,last_name,salary,job_title
	from employees
	join departments
	using (department_id)
	where job_title= 'Software Engineer';
end
call GetEmployeesByDepartmentNameKate ('IT');

