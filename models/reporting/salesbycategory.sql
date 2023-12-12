{{ config (materialzed ='view' , schema ='Reporting') }}

select c.categoryname, sum(od.linesalesamount) as sales
from  {{ref ("trf_orderdetails_delta") }} od

inner join
{{ ref ("trf_products")}} p
on od.productid =p.productid

inner join {{ ref("categories") }} c
on p.categoryid =c.categoryid

group by c.categoryname  order by sales desc