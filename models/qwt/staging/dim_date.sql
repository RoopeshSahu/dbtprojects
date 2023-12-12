{{ config(materialized = 'view', schema = 'RAW') }}
{{dbt_date.get_date_dimension('2007-04-19', '2012-03-31') }} 