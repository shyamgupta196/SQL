select
  job_titles
from
  data_sci.employees

### HOW LIKE makes it easy for pattern matching 
select distinct
  job_titles
from
  data_sci.employees
where
  job_title like ‘vp%’



----------------------------------------------------------------
select distinct
  job_titles
from
  data_sci.employees
where
  job_title like ‘vp%’
or
 job_title like ‘web%’

----------------------------------------------------------------
-- how SIMILAR TO makes it more easy for pattern matching
select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘(vp%|web%)’

----------------------------------------------------------------
select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘(vp% | web%)’ -- this matches to vp%[space] 

----------------------------------------------------------------
-- here we match is without spaces
select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘(vp%|web%)’




select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘vp%’




select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘vp%a’

------------------------------------------------------------


select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘vp%a%’




select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘vp a%’
-- try these out. they are really helpful


select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘vp_a%’


select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘vp (a|m)’  ---- run and see why it gives empty results?

select distinct
  job_titles
from
  data_sci.employees
where
  job_title similar to ‘vp (a|m)%’