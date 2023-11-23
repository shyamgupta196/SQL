-- # in situations where we need to put our data in buckets of a particular width
-- we use WIDTH_BUCKET
-- to find cumulative distribution of a column use CUME_DIST
--  round(cume_dist() over (order by salary desc),10) ## it expects a numeric not a double precision

select 
 department_id,
 salary,
 last_name,
 width_bucket(salary,0,150000,10 ),
 round((cume_dist() over (order by salary desc)*100)::numeric,2) 
from 
 data_sci.employees