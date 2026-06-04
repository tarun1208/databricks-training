1.  Show all employees whose salary is NULL.
A.  select *
    from Employees
    where salary is null

2.  Show all orders where discount is NOT NULL.
A.  select * 
    from Orders 
    where discount is not null

3.  Get products where category is NULL.
A.  select * 
    from Products 
    where category is null

4.  Count number of employees with NULL manager_id.
A.  select count(emp_id) as no_of_emp
    from Employees
    where manager_id is null

5.  Replace NULL salary with 0.
A.  select IFNULL(salary,0)
    from Employees

6.  Replace NULL bonus with 1000.
A.  select IFNULL(bonus,1000)
    from Employees

7.  Show order amount, if NULL replace with 500.
A.  select amount,IFNULL(amount,500)
    from Orders

8.  Replace NULL stock with 0.
A.  select IFNULL(stock,0)
    from Products

9.  Show employee earnings using: salary, if NULL use bonus
A.  select name, coalesce(salary,bonus) as earnings
    from Employees

10. Show first available value: salary → bonus → 0
A.  select name, coalesce(salary,bonus,0) as earnings
    from Employees

11. Show product price: price → 1000 (default)
A.  select product_name, coalesce(price,1000) as product_price
    from Products

12. Get customer payment: amount → discount → 0
A.  select customer_name, coalesce(amount,discount,0) as customer_payment
    from Orders

13. Convert salary to NULL if salary = 0.
A.  select name,NULLIF(salary, 0) as salary
    from Employees

14. Convert discount to NULL if discount = 0.
A.  select customer_name, NULLIF(discount,0) as discount
    from Orders

15. Use NULLIF to avoid divide by zero.
A.  select amount / NULLIF(discount, 0)
    from Orders

16. Replace coupon_code with NULL if it is 'DISC10'.
A.  select NULLIF(coupon_code,'DISC10')
    from Orders

17. Calculate total earnings: salary + bonus (handle NULL properly).
A.  select sum(earnings)as total_earning
    from(
      select coalesce(salary,bonus) as earnings
      from Employees
     )x

18. Show employees where: both salary AND bonus are NULL.
A.  select name
    from Employees
    where salary is null AND bonus is null

19. Show products where: price is NULL but category is NOT NULL.
A.  select product_name
    from Products
    where price is null AND category is not null

20. Show orders where: both amount and discount are NULL.
A.  select order_id
    from Orders
    where amount is null AND discount is null

21. Show employee income: COALESCE(salary, bonus, 1000).
A.  select *
    from ( 
      select name, coalesce(salary,bonus,1000)as income
      from Employees
     )x

22. Replace empty discount with NULL using NULLIF: NULLIF(discount, 0).
A.  select NULLIF(discount,0)
    from Orders

23. Show final payable amount: amount - discount (handle NULL).
A.  select order_id, amount-IFNULL(discount,0) as payable_amount
    from Orders

24. Find employees where salary is NULL but manager exists.
A.  select name
    from Employees
    where salary is null AND manager_id is not null
