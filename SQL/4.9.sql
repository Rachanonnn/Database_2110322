select distinct C.customer_id , C.customer_name
from customer C , ordert O
where O.customer_id = C.customer_id and (O.order_date between '2020-01-10 0:00:01' and '2020-01-15 23:59:59');