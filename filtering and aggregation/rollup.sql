-- how do you find aggregates ? SUM, COUNT, AVG... clause? correct !
-- okay, so how do you find sub-aggregates ? SUM, COUNT, AVG... clause? WRONG!

-- ROLLUP clause. 

-- Rollup is used to calculate subtotals and totals by group
-- returns an extra total country wise , otherwise we would have
-- wrote another select statement to see total, with rollup  its easier

select
	cr.country_name, cr.region_name, count(e.*)
from 
	data_sci.employees e
join 
	data_sci.company_regions cr
on
	e.region_id = cr.id
group by 
	rollup(cr.country_name,cr.region_name)
order by 
	cr.country_name, cr.region_name