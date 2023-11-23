
-- say i want to see employees whose last name starts with s and salary more than $100000
select
    last_name, department_id, salary
from 
    data_sci.employees
where
    last_name like 's%'
or 
    salary > 100000; -- LIKE "s%" means start with s followed by anythin

-- group by 
--easy right ! yeah :)
select
    sum(salary)
from
    data_sci.employees
where
    salary > 100000
group by
    department_id;
