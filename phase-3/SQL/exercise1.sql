select sale_date, sum(total_amount) as daily_revenue
from sales
where total_amount is not null
group by sale_date
order by sale_date;