select customer_id, count(sale_id) as purchase_count
from sales
group by customer_id
having count(sale_id) > 2
order by purchase_count desc