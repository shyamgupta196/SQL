-- count employees , in a department where total salary is >5000000, ordered from highest to lowest salary
select 
	department_id, sum(salary) salaries
from
	data_sci.employees e	
group by 
	department_id
having
	sum(salary)>5000000
order by 
	salaries desc
