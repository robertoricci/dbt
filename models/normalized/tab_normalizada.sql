
with tab_normalizada as (
     select
        cast(JSON_EXTRACT_PATH_TEXT("_AIRBYTE_DATA",'id') as numeric) as "id",
        cast(JSON_EXTRACT_PATH_TEXT("_AIRBYTE_DATA",'make') as varchar) as "make",
        cast(JSON_EXTRACT_PATH_TEXT("_AIRBYTE_DATA",'year') as numeric) as "year",
        cast(JSON_EXTRACT_PATH_TEXT("_AIRBYTE_DATA",'model') as varchar) as "model",
        cast(JSON_EXTRACT_PATH_TEXT("_AIRBYTE_DATA",'price') as float) as "price"
    from dbt._airbyte_raw_products
)
select * from tab_normalizada

