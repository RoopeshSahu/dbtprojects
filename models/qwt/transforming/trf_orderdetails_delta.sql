{{ config(materialized = 'table') }}
select *, 
(UnitPrice * quantity) * (1-Discount) as LineSalesAmount
 from 
{{ ref("stg_orderdetails") }}