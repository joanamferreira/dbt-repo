SELECT *
FROM   (
-- Use the ref function to select from other models
SELECT *
FROM   poc-databand.dbt_jferreira.source_data
WHERE  id = 1) 
as model_limit_subq limit 500