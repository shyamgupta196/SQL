-- -- partition by is just like group by , its just a way of doing things efficiently.
-- -- select 
-- --   department_id,
-- --   last_name,
-- --   salary,
-- --   first_value(salary)over( partition by department_id order by last_name desc)
-- -- from 
-- --   data_sci.employees
  
-- -- ALSO 
-- -- we can see
-- select 
--   department_id,
--   salary,
--   round(avg(salary) over (partition by department_id),2)
-- from 
--    data_sci.employees
   
-- ## ntile
-- select 
--   department_id,
--   salary,
--   ntile(4) over (partition by department_id order by salary desc)
-- from 
--    data_sci.employees

-- nth_value 
select 
  department_id,
  salary,
  nth_value(salary,2) over (partition by department_id order by salary desc)
from 
   data_sci.employees