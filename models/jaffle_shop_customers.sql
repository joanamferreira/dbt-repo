{{ config(
  materialized='table',
  file_format='delta'
) }}

select * from jaffle_shop_customers;
