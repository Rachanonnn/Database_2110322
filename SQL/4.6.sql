select C.customer_id , C.customer_name
from customer C, ordert O
where C.customer_id = O.customer_id
group by C.customer_id
having count(*) = (
	select max(max_order_count)
 	from (
  		select count(*) as max_order_count
  		from customer C, ordert O
  		where C.customer_id = O.customer_id
 		group by C.customer_id
 	)
);