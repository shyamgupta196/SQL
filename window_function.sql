-- ## partition by is just like group by , its just a way of doing things efficiently.
select 
  department_id,
  last_name,
  salary,
  first_value(salary)over( partition by department_id order by last_name desc)
from 
  data_sci.employees
  