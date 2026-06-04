1.  Display all employee details.
A.  select * from Employees


2.  Display only employee names and salaries.
A.  select emp_name,salary from Employees


3.  Display employee names and departments.
A.  select emp_name, department from Employees

4.  Display all employees from the IT department.
A.  select * from Employees
    where department = 'IT'


5.  Display employee names and experience.
A.  select emp_name,experience from Employees

6.  Find employees with salary greater than 70000.
A.  select emp_name from Employees
    where salary>70000

7.  Find employees working in Hyderabad.
A.  select * from Employees
    where city = 'Hyderabad'

8.  Find employees with experience less than 4 years.
    select * from Employees
    where experience<4

9.  Find employees from Finance department.
A.  select * from Employees
    where department = 'Finance'

10. Find employees whose salary is equal to 52000.
    select * from Employees
    where salary=52000

11. Find total salary department-wise.
A.  select department, sum(salary) as total_salary
    from Employees
    group by department

12. Find average salary in each department.
A.  select department,avg(salary) as average_salary
    from Employees
    group by department

13. Count employees in each city.
A.  select city ,count(emp_id) as employees_in_city
    from Employees
    group by city

14. Find maximum salary in each department.
A.  select department,max(salary) as maximum_salary
    from Employees
    group by department

15. Find minimum experience department-wise.
A.  select department,min(salary) as minimum_salary
    from Employees
    group by department

16. Find departments having more than 3 employees.
A.  select department, count(emp_id) as Employee_count
    from Employees
    group by department
    having count(emp_id)>3

17. Find departments where average salary is greater than 60000.
A.  select department, avg(salary) as average_salary
    from Employees
    group by department
    having avg(salary)>60000


18. Find cities having more than 2 employees.
A.  select city,count(emp_id) as Employee_count
    from Employees
    group by city
    having count(emp_id)>2

19. Find departments where total salary is greater than 200000.
A.  select department, sum(salary) as total_salary
    from Employees
    group by department
    having sum(salary)>200000


20. Find departments where maximum salary is above 90000.
A.  select department, max(salary) as maximum_salary
    from Employees
    group by department
    having max(salary)>90000

21. Display top 5 highest paid employees.
A.  select emp_name from Employees
    order by salary desc
    limit 5

22. Display top 3 employees with highest experience.
A.  select emp_name from Employees
    order by experience desc
    limit 3

23. Display top 2 salaries from Finance department.
A.  select * from Employees
    where department = 'Finance'
    order by salary desc
    limit 2

24. Display top 4 employees from Hyderabad.
A.  select * from Employees
    where city = 'Hyderabad'
    limit 4

25. Display top 1 highest salary employee.
A.  select * from Employees
    order by salary desc
    limit 1

26. Display distinct department names.
A.  select distinct department from Employees

27. Display distinct city names.
A.  select distinct city from Employees

28. Display distinct salary values.
A.  select distinct salary from Employees

29. Display distinct combinations of department and city.
A.  select distinct department,city from Employees

30. Display distinct experience values.
A.  select distinct experience from Employees

31. Find employees with salary >= 80000.
A.  select * from Employees
    where salary>=80000

32. Find employees with experience <= 3.
A.  select * from Employees
    where experience <=3

33. Find employees whose salary <> 45000.
A.  select * from Employees
    where salary <>45000

34. Find employees with salary < 50000.
A.  select * from Employees
    where salary <50000

35. Find employees with experience > 5.
A.  select * from Employees
    where experience >5

36. Find employees from IT department AND salary greater than 70000.
A.  select * from Employees
    where department ='IT' AND salary>70000

37. Find employees from Hyderabad OR Bangalore.
A.  select * from Employees
    where city = 'Hyderabad' OR city = 'Bangalore'

38. Find employees from HR department AND experience less than 3.
A.  select * from Employees
    where department = 'HR' AND experience <3

39. Find employees with salary greater than 60000 OR experience greater than 6.
A.  select * from Employees
    where salary>60000 AND experience >6

40. Find employees NOT from Sales department.
A.  select * from Employees
    where department<>'Sales'

41. Find employees working in ('Hyderabad', 'Mumbai').
A.  select * from Employees
    where city IN ('Hyderabad', 'Mumbai')

42. Find employees whose department IN ('IT', 'Finance').
A.  select * from Employees
    where department IN ('IT', 'Finance')

43. Find employees whose city NOT IN ('Chennai', 'Pune').
A.  select * from Employees
    where city NOT IN ('Chennai', 'Pune')

44. Find employees whose salary IN (45000, 75000, 91000).
A.  select * from Employees
    where salary IN (45000, 75000, 91000)

45. Find employees whose department NOT IN ('HR', 'Sales').
A.  select * from Employees
    where department NOT IN ('HR', 'Sales')

46. Find employees with salary BETWEEN 50000 AND 80000.
A.  select * from Employees
    where salary between 50000 and 80000

47. Find employees with experience BETWEEN 3 AND 6.
A.  select * from Employees
    where experience between 3 and 6

48. Find employees whose emp_id BETWEEN 105 AND 112.
A.  select * from Employees
    where emp_id between 105 and 112

49. Find employees with salary NOT BETWEEN 40000 AND 60000.
A.  select * from Employees
    where salary not between 40000 and 60000

50. Find employees with experience BETWEEN 2 AND 4.
A.  select * from Employees
    where experience between 2 and 4

51. Find employees whose names start with 'R'.
A.  select * from Employees
    where emp_name like 'R%'

52. Find employees whose names end with 'a'.
A.  select * from Employees
    where emp_name like '%a'

53. Find employees whose names contain 'v'.
A.  select * from Employees
    where emp_name like '%v%'

54. Find employees whose city starts with 'B'.
A.  select * from Employees
    where city like 'B%'

55. Find employees whose department ends with 's'.
A.  select * from Employees
    where department like '%s'
