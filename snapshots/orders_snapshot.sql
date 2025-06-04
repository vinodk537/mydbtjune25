{% snapshot orders_snapshot %}

{{
    config(
      target_database='DBT',
      target_schema='CURATED_DATA',
      unique_key='order_id',
      strategy='timestamp',
      updated_at='inserted_updated_at',
    )
}}

select * from DBT.RAW_DATA.ORDERS_LATEST

{% endsnapshot %}