-- for joining two tables we use JOIN clause 
select
   *
from
    data_sci.employees
join
    data_sci.company_regions
on
    employees.region_id = company_regions.id


-- some more examples 
select
    e.*, cr.region_name, cr.country_name
from
    data_sci.employees e        -- 'e' &
join
    data_sci.company_regions cr --"cr" is used as an alias for the columns
on
    e.region_id = cr.id

--
select
    e.*, cr.region_name, cr.country_name
from
    data_sci.employees e
join
    data_sci.company_regions cr
on
    e.region_id = cr.id
where
    cr.country_name = 'canada';


