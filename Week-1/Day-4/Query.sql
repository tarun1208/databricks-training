1.  Use ROW_NUMBER() to assign a row number to employees ordered by salary descending.
A.  select *,
    ROW_NUMBER() over(order by salary desc) as row_numbers
    from employees

2.  Use RANK() to rank employees by salary.
A.  select *,
    RANK() over(order by salary desc) as salary_rank
    from employees

3.  Use DENSE_RANK() to rank employees by salary.
A.  select employee_name,salary,
    DENSE_RANK() over(order by salary desc) as dense_salary_rank
    from employees

4.  Find the top 3 highest-paid employees using a window function.
A.  select *
    from(
      select employee_name,salary,
      DENSE_RANK() over(order by salary desc) as dense_salary_rank
      from employees
      ) x
    where dense_salary_rank<=3

5.  Rank employees within each department using PARTITION BY.
A.  select employee_name,department,
    RANK() over(partition by department order by salary) as rank_employee
    from employees

6.  Display the highest salary in each department using a window function.
A.  select *
    from(
     select employee_name,department,

     RANK() over(partition by department order by salary) as rank_employee
     from employees
    )x
    where rank_employee=1

7.  Calculate the running total of order amounts ordered by order_date.
A.  select order_date,total_amount,
    sum(total_amount) over(order by order_date) as Running_total
    from orders

8.  Calculate the cumulative sales amount for each employee.
A.  select employee_id,total_amount,
    sum(total_amount) over(partition by employee_id order by order_date) as cumulative_sales
    from orders

9.  Use LAG() to show the previous order amount for each customer.
A.  select customer_id,order_id, total_amount,
    LAG(total_amount) over(partition by customer_id order by order_date) as prev_ordered_amount
    from orders

10. Use LEAD() to show the next order amount for each customer.
A.  select customer_id,order_id, total_amount,
    LEAD(total_amount) over(partition by customer_id order by order_date) as prev_ordered_amount
    from orders

11. Find the difference between the current order amount and previous order amount.
A.  select customer_id,order_id, total_amount,
    total_amount - LAG(total_amount) over(partition by customer_id order by order_date) as difference
    from orders

12. Calculate a moving average of the last 3 orders.
A.  

13. Use NTILE(4) to divide employees into salary quartiles.
A.  

14. Find the first order placed by each customer using ROW_NUMBER().
A.  select *
    from ( select order_id,customer_id,order_date,
	ROW_NUMBER() over (partition by customer_id order by order_date) as row_num
        from orders
	) x
    where row_num=1

15. Find the latest order placed by each customer.
A.  select *
    from ( select order_id,customer_id,order_date,
	ROW_NUMBER() over (partition by customer_id order by order_date desc) as row_num
        from orders
	) x
    where row_num=1

16. Display employee salaries along with department average salary.
A.  select employee_name,department,salary,
    avg(salary) over (partition by department) as dep_salary
    from employees

17. Find employees earning above their department average salary.
A.  select* 
    from ( 
      select employee_name,department, salary,
      avg(salary) over(partition by department) as dep_salary
      from employees
    ) x
    where dep_salary<salary

18. Use SUM() OVER(PARTITION BY department) to calculate department payroll.
A.  select department,
    sum(salary) over(partition by department) as dep_payroll
    from employees

19. Find the percentage contribution of each employee salary within their department.
A.  select employee_name,department,
    round((salary*100)/sum(salary) over(partition by department)) as salary_percentage
    from employees

20. Use COUNT() OVER() to show total number of employees alongside each row.
A.  select employee_name,
    count(employee_id) over()as total_employee
    from employees


21. Create a CTE to calculate total sales per employee.
A.  with total_sales as (
      select employee_id, sum(total_amount) as sales
      from orders
      group by employee_id
      )
    select * 
    from total_sales

22. Use a CTE to find employees whose sales exceed the company average.
A.  with employee_sales as(
      select employee_id,sum(total_amount) as total_sales
      from orders
      group by employee_id
      ),
    company_avg as(
      select avg(total_sales) as avg_sales
      from employee_sales
      )
    select  es.employee_id,es.total_sales
    from employee_sales es, company_avg ca
    where es.total_sales > ca.avg_sales

23. Create multiple CTEs to calculate customer total spending and rankings.
A.  with customer_orders as(
      select customer_id, sum(total_amount) as total_spending
      from orders
      group by customer_id
      ),
  
      ranking as (
        select customer_id, total_spending,
        rank() over(order by total_spending desc) as rankers
        from customer_orders
        )
    select * from ranking

24. Write a recursive CTE to generate numbers from 1 to 10.
A.  with recursive  number as(
      select 1 as num
      union all
      select num+1
      from number
      where num<10
    )
    select *
    from number

25. Use a recursive CTE to display employee hierarchy data.
A.  
