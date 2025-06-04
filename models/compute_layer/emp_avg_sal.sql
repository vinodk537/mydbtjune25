{{ config(materialized='ephemeral') }}

select departmentno,avg(salary) as average_sal from RAW_DATA.EMPLOYEE group by 1