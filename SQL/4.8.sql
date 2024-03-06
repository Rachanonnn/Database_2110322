select C.customer_id , C.customer_name, count (*) as number_of_orders
from customer C, ordert O
where C.customer_id = O.customer_id
group by C.customer_id
order by number_of_orders desc
limit 3;