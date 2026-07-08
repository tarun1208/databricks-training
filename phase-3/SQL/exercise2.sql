select c.city, sum(s.total_amount) as total_revenue
from customers c
join sales s
on c.customer_id = s.customer_id
where c.city is not null
group by c.city
order by total_revenue desc