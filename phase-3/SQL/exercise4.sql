with customer_spending as (
    select c.customer_id, c.first_name, c.last_name, c.city,
        sum(s.total_amount) as total_spend
    from customers c
    join sales s
    on c.customer_id = s.customer_id
    group by c.customer_id, c.first_name, c.last_name, c.city
)

select *
from(
    select *,
           row_number() over(partition by city order by total_spend desc) as rank
           from customer_spending
) ranked
WHERE rank = 1