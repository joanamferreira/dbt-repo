
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table', alias='source_data') }}

with source_data as (

    select 22 as id, 15 as code
    union all
    select 11 as id, 3 as code
    union all
    select 79 as id, 3 as code
    union all
    select null as id, 5 as code

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
