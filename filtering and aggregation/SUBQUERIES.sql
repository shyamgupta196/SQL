select
   round(avg(salary), 2)
from
   data_sci.employees 


-- WHERE clause SUBQUERY 
select
   round(avg(e1.salary), 2)
from
   (select * from data_sci.employees where salary > 100000) e1


-- you could have used the primary orthodox WHERE clause 
-- but the results are not more readable in a complex setup
-- hence use SUBQUERIES.

select
   round(avg(e1.salary), 2)
from
   data_sci.employees e1
where
   salary > 100000


-- WHERE clause SUBQUERY 
select
   department_id
from
   data_sci.employees e1
where
   (select max(salary) from data_sci.employees e2) = e1.salary