with region_salaries as /* a variable named region_salaries and making a window of data to refer later */
(select region_id, sum(salary) region_salary
 from data_sci.employees
 group by region_id),
top_region_salaries as /*similarly a named variable */
(select region_id 
  from region_salaries 
  where region_salary > (select sum(region_salary)/7 from region_salaries))
select --now selecting data from table expression declared above for final view 
 * 
from 
 region_salaries
where 
 region_id in (select region_id from top_region_salaries)