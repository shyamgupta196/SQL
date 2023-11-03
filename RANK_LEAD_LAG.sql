-- # RANK , LEAD , LAG
select 
 department_id,
 salary,
 last_name,
 rank() over(partition by department_id order by salary desc),
 lead(salary) over(partition by department_id order by salary desc),
 lag(salary, 2) over(partition by department_id order by salary desc)

from 
 data_sci.employees