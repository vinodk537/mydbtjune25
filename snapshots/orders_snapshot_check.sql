{% snapshot products_snapshot %}

{{
    config(
      target_database='DBT',
      target_schema='CURATED_DATA',
      unique_key='ID',
      strategy='check',
      check_cols=['NAME','PRICE'],
      invalidate_hard_deletes=True
    )
}}

select * from DBT.RAW_DATA.PRODUCTS

{% endsnapshot %}