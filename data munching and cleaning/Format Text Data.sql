select
  *
from
  data_sci.company_departments
-- Have a look at the data 
-- all lowercase letters
-- if we want to use all upper case letters, we can do -

select
  upper(department_name)
from
  data_sci.company_departments

-- for capitalizing only first letters 
select
  initcap(department_name)
from
  data_sci.company_departments

-- you can also use the result of one function into another function 

select
  lower(initcap(department_name))
from
  data_sci.company_departments





-- there may be cases when you encounter spaces in strings like these--

select
  ‘ kelly’


select
  ‘ kelly’ = ‘kelly’

-- use ltrim to remove whitespace from the string
select
  ltrim(‘ kelly’)

select
  ltrim(‘ kelly’) = ‘kelly’ -- TRUE


select
  ltrim(‘ kelly  ’) = ‘kelly’ --FALSE

select
  rtrim(ltrim(‘ kelly  ’)) = ‘kelly’ -- TRUE

-- to concat 2 columns , you can use "||"

select
  job_title || last_name
from
  data_sci.employees

-- adding a seperator
select
   job_title || ‘-’ || last_name
from
  data_sci.employees


select
   job_title || ‘-’ || null
from
  data_sci.employees

-- instead of using || operator we can use CONCAT function

select
   concat(job_title, ‘-’,last_name)
from
  data_sci.employees

select
   concat(job_title, ‘-’,null)
from
  data_sci.employees

-- CONCAT_WS is similar to the JOIN function of python
-- we specify the seperator at start, now you get a seperator between all the additional columns.
select
   concat_ws(‘-’, job_title, last_name)
from
  data_sci.employees


select
   concat_ws(‘-’, job_title, last_name,email)
from
  data_sci.employees