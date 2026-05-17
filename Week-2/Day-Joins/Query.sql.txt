1.  Retrieve the names of employees and their corresponding managers from the "employees" table, ensuring that even employees without managers are included.
A.  select e.emp_name,m.manager_id
    from employees e
    left join employees m
    on e.manager_id = m.emp_id

2.  Display all employees and their corresponding departments from the "employees" and "departments" tables, showing employees even if they don't belong to any department.
A.  select emp_id,emp_name,dept_name
    from employees e
    left join departments d
    on e.dept_id = d.dept_id

3.  List the names of employees who report to a manager, along with their manager's name, from the "employees" table.
A.  select e.emp_name,m.emp_name as manager_name
    from employees e
    left join employees m
    on e.manager_id = m.emp_id

4.  Display a list of employees who do not belong to any department, even if the department data is missing.
A.  select emp_name,emp_name
    from employees e
    left join departments d
    on e.dept_id = d.dept_id
    where d.dept_id is null

5.  Fetch the names of employees and the projects they are assigned to. For employees who are not assigned any projects, show NULL for the project.
A.  select e.emp_name, p.project_name
    from employees e
    left join projects p
    on e.emp_id = p.emp_id

6.  List all employees who have completed at least one project, showing their names and the project names.
A.  select e.emp_name,p.project_name
    from employees e
    inner join projects p
    on e.emp_id = p.emp_id

7.  Show the names of employees and their projects, ensuring that no project is omitted even if an employee is not assigned to it.
A.  select e.emp_name, p.project_name
    from employees e
    right join projects p
    on e.emp_id = p.emp_id

8.  Retrieve the names of employees and their corresponding department names, including employees who are not in any department.
A.  select e.emp_name,d.dept_name
    from employees e
    left join departments d
    on e.dept_id = d.dept_id

9.  Find the names of all departments and employees, ensuring that departments with no employees are included.
A.  select e.emp_name, d.dept_name
    from employees e
    right join departments d
    on e.dept_id = d.dept_id

10. Show the names of employees and their department names, including employees not assigned to any department and departments without employees.
    A.  select e.emp_name, d.dept_name
    from employees e
    full outer join departments d
    on e.dept_id = d.dept_id

11. Find employees who have not completed any project, along with the project details where applicable.
A.  select project_id,project_name,emp_name
    from employees e
    left join projects p
    on e.emp_id = p.emp_id
    where p.project_id is null

12. Retrieve the names of employees and the names of their projects, including employees who are not working on any project.
A.  select e.emp_id,emp_name,project_id,project_name
    from employees e
    left join projects p
    on e.emp_id =p.emp_id

13. List all projects and the employees assigned to them, even for projects that have no employees.
A.  select project_id, project_name,e.emp_id,emp_name
    from projects p
    left join employees e
    on p.emp_id = e.emp_id

14. Show the names of all employees who have both a manager and at least one project, listing the manager's name as well.
A.  select e.emp_name,m.emp_name,p.project_id,p.project_name
    from employees e
    join employees m
    on e.manager_id = m.emp_id
    join projects p
    on e.emp_id =p.emp_id

15. List the names of employees and the corresponding department names, but exclude those employees who don't belong to a department.
A.  select emp_name,dept_name
    from employees e
    join departments d
    on e.dept_id = d.dept_id

16. Display employees who belong to multiple departments, showing the employee's name and the department names.
A.  select *
    from(
      select e.emp_name,d.dept_name,
      count(d.dept_id) over (partition by e.emo_id) as department_count
      from employees e
      join departments d
      on e.dept_id = d.dept_id
     ) x
    where department_count>1

17. List the names of all departments and employees, ensuring that even if a department has no employees, it is included in the result.
A.  select emp_name,dept_name
    from employees e
    right join departments d
    on e.dept_id = d.dept_id

18. Retrieve employees who have worked on at least one project and do not belong to a department, listing their name and project details.
A.  select e.emp_name,p.project_name
    from employees e
    join projects p
    on e.emp_id = p.emp_id
    left join departments d
    on e.dept_id = d.dept_id
    where d.dept_id is null

19. Find the total number of employees who belong to a department, ensuring the departments with no employees are still included.
A.  select dept_name,
    count(e.emp_id) over(partition by d.dept_id) as Total_employees
    from departments d
    left join employees e
    on d.dept_id = e.dept_id

20. Show the employees and their managers, displaying only those employees who report to a manager, excluding employees without managers.
A.  select e.emp_name,m.emp_name
    from employees e
    left join employees m
    on e.manager_id = m.emp_id
    where e.manager_id is not null

21. Display all employee names along with their corresponding managers' names, but include employees who do not have managers.
A.  select e.emp_name,m.emp_name
    from employees e 
    left join employees m
    on e.manager_id = m.emp_id

22. Find the names of departments and the number of employees in each department, including departments that have no employees.
A.  select d.dept_name,count(e.emp_id)as total_employees
    from departments d
    left join employees e
    on d.dept_id = e.dept_id
    group by d.dept_id

23. List all employees and the departments they belong to, ensuring that departments with no employees are also listed.
A.  select emp_name, dept_name
    from departments d
    full outer join employees e
    on d.dept_id = e.dept_id

24. Retrieve the names of employees and their project assignments, including employees who are not assigned to any projects.
A.  select emp_name,project_name
    from employees e
    left join projects p
    on e.emp_id = p.emp_id

25. List the names of all employees and their respective department and project assignments, including employees who are not assigned to a project or department.
A.  select emp_name, dept_name,project_name
    from employees e
    left join departments d
    on e.dept_id = d.dept_id
    left join projects p
    on e.emp_id = p.emp_id

26. Display the names of employees who belong to at least one department, with the department name listed, but include employees without a department as well
A.  select emp_name,dept_name
    from employees e
    left join departments d
    on e.dept_id = d.dept_id
