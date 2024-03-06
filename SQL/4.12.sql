select count(*) as total_orders
from ordert O
where O.order_date between '2020-01-10 0:00:01' and '2020-01-15 23:59:59';