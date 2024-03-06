select sum(P.standard_price * OL.ordered_quantity) as total_payment
from order_line OL, product P
where OL.product_id = P.product_id and OL.order_id = 3;