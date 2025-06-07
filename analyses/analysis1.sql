{{
    config(
    materialized='table',
    alias='emp_gt'
    )
}}


select e.*,as1.average_sal from 
{{source('raw_data','employee')}} e
 inner join {{ref('emp_avg_sal')}} as1 
on (as1.departmentno=e.departmentno) and e.salary>as1.average_sal