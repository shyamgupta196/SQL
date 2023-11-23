-- run this 
-- it returns a aggregates of columns
select
   cr.country_name,
   cr.region_name,
   cd.department_name,
   count(e.*)
from
  data_sci.employees e
join
   data_sci.company_regions cr
on
   e.region_id = cr.id
join
   data_sci.company_departments cd
on
   e.department_id = cd.id
group by 
   cr.country_name,
   cr.region_name,
    cd.department_name)
order by
   cr.country_name,
   cr.region_name,
   cd.department_name

------------------------------------------------------------------------------------------------
-- what if we want to have agg. on all possible columns.
-- returns an aggregate on all possible combinations of columns
select
	cr.country_name, cr.region_name,cd.department_name, count(e.*)
from 
	data_sci.employees e
join 
	data_sci.company_regions cr
on
	e.region_id = cr.id
join 
	data_sci.company_departments cd	
on 
	e.department_id = cd.id
group by 
	cube(cr.country_name, cr.region_name,cd.department_name)
order by 
	cr.country_name, cr.region_name,cd.department_name


-- general note
-- to select "first n" -- The standard SQL statement is ""fetch first n rows only"".
-- we can use "LIMIT n" this goes with ORDER BY clause.