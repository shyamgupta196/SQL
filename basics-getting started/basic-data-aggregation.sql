-- basic select statements

select
   *
from 
    data_sci.employees;

-- see only 10 entries

select
   *
from 
    data_sci.employees
limit 10;

-- WHERE clause
select
   *
from 
    data_sci.employees
where
    region_id = 2;

-- agg fn's
select
    count(*), min(salary), max(salary)
from 
    data_sci.employees
where   
    region_id = 2;
