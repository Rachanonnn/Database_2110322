select C.postal_code, count(*) as customer_numbers
from customer C
group by C.postal_code
order by customer_numbers DESC;