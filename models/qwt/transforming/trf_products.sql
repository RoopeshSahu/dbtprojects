{{ config (materialzed ='table', sql_header= "alter session set timezone ='Asia/Kolkata';") }}
select *,
(quantityperunit * unitcost) as totalproductcost,
case when (unitsinstock - unitsonorder) > 0 then True else False end as productavailability ,
 (unitprice - unitcost ) as profit
from {{ref ('stg_products') }}