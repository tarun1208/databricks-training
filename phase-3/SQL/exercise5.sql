select c.customer_id, c.first_name, c.last_name, c.city,
    sum(s.total_amount) as total_spend, count(s.sale_id) as purchase_count
from customers c
join sales s
on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name, c.city
order by total_spend desc