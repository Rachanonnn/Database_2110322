select P.product_id , P.product_description
from product P, order_line OL
where P.product_id = OL.product_id
group by P.product_id
having count(*) = (
	select max(max_order_count)
	from (
  		select count(*) as max_order_count
  		from product P, order_line OL
  		where P.product_id = OL.product_id
  		group by P.product_id
	)
);