{{
    config(
    materialized='table',
    alias='emp_tgt_avg',
    pre_hook="use warehouse {{get_warehouse_for_model()}}",
    post_hook="{{audit_macro('remove_dups_and_calc_avg','COMPLETED')}}",
    tags='big',
    query_tag='remove_dups',
    database='dbt',
    schema='custom',
    )
}}

select {{convert_uppercase('empname')}} as up_ename from dbt.curated_data.emp_uniq_tbl
group by 1