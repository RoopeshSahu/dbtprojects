{{ config (materialzed ='table') }}
select 
customerid,
companyname,
contactname,
city,
country,
divisionid,
address,
fax,
phone,
postalcode,
stateprovince
from {{ref ('stg_customers') }}

