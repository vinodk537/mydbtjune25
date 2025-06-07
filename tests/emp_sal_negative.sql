{{ config(tags='negative_test') }}

select * from {{ref('emp_gt_avg_sal')}}
where salary<0