{{
    config(
    materialized='incremental',
    unique_key='empid',
    alias='emp_tgt',
    tags='tag1'
    )
}}


select
* from DBT.RAW_DATA.EMPLOYEE
{% if is_incremental() %}
-- this filter will only be applied on an incremental run
where inserted_at > (select max(inserted_at) from {{this}} )
{% endif %}