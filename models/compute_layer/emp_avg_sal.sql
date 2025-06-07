{{ config(materialized='ephemeral') }}

select departmentno,max(salary) as average_sal from RAW_DATA.EMPLOYEE group by 1