-- GROUP BY is used to group the data. 
-- sum and avg respectively hold their meanings 

select
    department_id, sum(salary), round(avg(salary),2)
from 
    data_sci.employees
group by department_id;

-- say you have to find the standard deviation and variance of the data
select
    department_id, sum(salary), round(avg(salary),2),
    var_pop(salary),
    stddev_pop(salary)
from 
    data_sci.employees
group by department_id;
