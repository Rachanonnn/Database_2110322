select P.product_id , P.product_description , P.product_finish
from product P
where cast (P.product_finish as varchar) like 'White%';