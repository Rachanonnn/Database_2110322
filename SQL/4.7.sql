select P.product_id , P.product_description
from product P, order_line OL
where P.product_id = OL.product_id
group by P.product_id
having sum(OL.ordered_quantity) = (
	select max(max_num_order)
	from (
		select sum(OL.ordered_quantity) as max_num_order
  		from product P, order_line OL
  		where P.product_id = OL.product_id
  		group by P.product_id
 	)
);