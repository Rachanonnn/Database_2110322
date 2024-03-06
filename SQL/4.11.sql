select C.customer_id, C.customer_name
from customer C left join ordert O
on C.customer_id = O.customer_id
where O.customer_id is null
order by c.customer_id