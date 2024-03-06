select C.postal_code, count(*) as customer_numbers
from customer C
group by C.postal_code
having count(*) > 1
order by customer_numbers desc;