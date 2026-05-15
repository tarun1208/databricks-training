1.  List all students along with their department names.
A.  select student_name, department_name
    from Student s
    join Department d
    on s.department_id = d.department_id

2.  Display all staff members and their department names, including staff without departments.
A.  select staff_name, department_name
    from Staff s
    left join Department d
    on s.department_id = d.department_id

3.  Find all departments that currently have no students assigned.
A.  select department_name
    from Department d
    left join Student s
    on d.department_id = s.department_id
    where s.department_id is null

4.  Show students who do not have any marks recorded.
A.  select Student_name
    from Student s
    left join Mark m
    on s.student_id = m.student_id
    where m.student_id is null

5.  Display subjects that are not assigned to any staff member.
A.  select subject_name
    from Subject s
    left join Staff sa
    on s.staff_id = sa.staff_id
    where s.staff_id is null
 
6.  Find the average CGPA department-wise.
A.  select d.department_id,d.department_name,avg(cgpa) as AVG_CGPA
    from Department d
    left join Student s
    on d.department_id = s.department_id
    group by department_id,department_name

7.  Display departments where the average CGPA is greater than 8.0.
A.  select d.department_id,d.department_name,avg(cgpa) as AVG_CGPA
    from Department d
    left join Student s
    on d.department_id = s.department_id
    group by department_id,department_name
    having AVG_CGPA>8.0

8.  Find the total number of students in each department.
A.  select d.department_id,department_name,count(s.student_id) as total_students
    from Department d
    left join Student s
    on d.department_id = s.department_id
    group by d.department_id, department_name

9.  Display the highest and lowest marks scored in each subject.
A.  select s.subject_id,subject_name,max(marks) as highest_mark,min(marks) as lowest_mark
    from Subject s
    left join Mark m
    on s.subject_id = m.subject_id
    group by s.subject_id,subject_name

10. Find students who scored more than 90 in any exam.
A.  select student_name,marks
    from Student s
    left join Mark m
    on s.student_id = m.student_id
    where marks>90

11. Display the names of students who belong to the Computer Science department.
A.  select student_name
    from Student s
    left join Department d
    on s.department_id = d.department_id
    where department_name = 'Computer Science'

12. Find the number of subjects handled by each staff member.
A.  select staff_name,count(subject_id) as number_of_subject
    from Staff st
    left join Subject sb
    on st.staff_id = sb.staff_id
    group by staff_name

13. Display students along with the total marks they obtained across all subjects.
A.  select student_name, sum(marks) as total_marks
    from Student s
    left join Mark m
    on s.student_id = m.Student_id
    group by s.student_name

14. Find departments with more than 2 staff members.
A.  select department_name, count(staff_id)as total_staff
    from Department d 
    left join Staff s
    on d.department_id = s.department_id
    group by d.department_id,department_name
    having total_staff>2

15. Display students whose CGPA is above the average CGPA.
A.  select student_name
    from Student
    where cgpa > (
      select avg(cgpa)
      from Student
     )

16. Find staff members earning more than the average salary of their department.
A.  select staff_name,salary
    from Staff s
    where salary > (
      select avg(salary)
      from Staff st
      where s.department_id = st.department_id
     )

17. Display the second highest salary among staff members.
A.  select max(salary) AS second_highest_salary
    from Staff
    where salary < (
      select max(salary)
      from Staff
     )

18. Find students who scored the highest marks in each subject.
A.  select s.student_name, sub.subject_name, m.marks
    from Mark m
    join Student s
    on m.student_id = s.student_id
    join Subject sub
    on m.subject_id = sub.subject_id
    where m.marks = (
        select max(m2.marks)
        from Mark m2
        where m.subject_id = m2.subject_id
       )

19. Display all students and their marks, including students without marks.
A.  select * 
    from Student s
    left join Mark m
    on s.student_id = m.student_id

20. Find subjects where the average marks are below 70.
A.  select subject_name,avg(marks)
    from Subject s
    left join Mark m
    on s.subject_id = m.subject_id
    group by s.subject_id,subject_name
    having avg(marks)<70

21. Display students ordered by CGPA in descending order.
A.  select student_name,cgpa
    from Student
    order by cgpa desc

22. Find the total salary expenditure department-wise.
A.  select department_name,sum(salary)
    from Department d
    left join Staff s
    on d.department_id = s.department_id
    group by d.department_id, department_name

23. Display departments where the total salary exceeds 200000.
A.  select department_name,sum(salary) as total_salary
    from Department d
    left join Staff s
    on d.department_id = s.department_id
    group by d.department_id, department_name
    having sum(salary)>200000

24. Find students admitted after 2021 and having CGPA above 7.5.
A.  select student_name,admission_year
    from Student
    where admission_year>2021 and cgpa >7.5

25. Display the number of students admitted each year.
A.  select admission_year, count(student_id)
    from Student
    group by admission_year

26. Find the city with the maximum number of students.
A.  select city,count(student_id) as number_of_students
    from Student
    group by city
    having count(student_id) = (
      select max(student_count)
      from (
        select count(student_id) as student_count
        from Student
        group by city
       )x
    )

27. Display all departments and their staff count, including empty departments.
A.  select department_name,count(staff_id)
    from Department d
    left join Staff s
    on d.department_id = s.department_id
    group by d.department_id,department_name

28. Find students who have failed in at least one subject (marks < 50).
A.  select student_name,marks
    from Student s
    left join Mark m
    on s.student_id = m.student_id
    where marks<50

29. Display staff hired before 2018.
A.  select staff_id,staff_name,hire_date
    from Staff
    where hire_date < '2018'

30. Find departments where no staff salary is recorded as NULL.
A.  select d.department_id,department_name
    from Department d
    join Staff s
    on d.department_id = s.department_id
    group by d.department_id,department_name
    having sum(s.salary is null) = 0

31. Assign a row number to students ordered by CGPA.
A.  select student_name,cgpa,
    row_number() over (order by cgpa desc) as row_numbers
    from Student

32. Rank students based on their CGPA.
A.  select student_id,student_name,cgpa,
    rank() over(order by cgpa desc) as Rank_of_students
    from Student

33. Display dense rank of staff salaries.
A.  select staff_name,salary,
    dense_rank() over (order by salary desc) as Staff_rank
    from Staff

34. Find the top 3 highest scoring students using window functions.
A.  select *
    from(
      select student_name,cgpa,
      dense_rank() over(order by cgpa desc) as student_ranks
      from Student
     ) x
    where student_ranks <=3

35. Display running total of marks for each student.
A.  select s.student_id,student_name,
    sum(m.marks) over (partition by s.student_id order by m.subject_id) AS running_total
    from Student s
    left join Mark m
    on s.student_id = m.student_id

36. Find the average marks for each subject using window functions.
A.  select s.student_id,student_name,m.subject_id,
    avg(marks) over (partition by m.subject_id) as individual_subject_marks
    from Student s
    left join Mark m
    on s.student_id = m.student_id

37. Display previous exam marks for each student using LAG().
A.  select s.student_id, student_name, m.subject_id, marks,
    lag(marks)over(partition by s.student_id order by m.subject_id) as previous_marks
    from Student s
    left join Mark m
    on s.student_id = m.student_id

38. Display next exam marks for each student using LEAD().
A.  select s.student_id, student_name, m.subject_id, marks,
    lead(marks) over(partition by s.student_id order by m.subject_id) as next_exam_marks
    from Student s
    left join Mark m
    on s.student_id = m.student_id

39. Find the highest marks within each subject using MAX() OVER().
A.  select s.subject_id,subject_name,
    max(marks) over (partition by s.subject_id) as maximum_marks
    from Subject s
    left join Mark m
    on s.subject_id = m.subject_id

40. Display cumulative average marks ordered by exam date.
A.  select exam_date,
    avg(marks) over(order by exam_date)as Cumulative_avg_mark
    from Mark

41. Find the first student admitted in each department.
A.  select student_id,student_name,department_name
    from(
      select s.student_id,student_name,department_name,
      dense_rank() over(partition by s.department_id order by s.admission_year) as        admission_rank
      from Student s
      left join Department d
      on s.department_id = d.department_id
     )x
    where admission_rank =1

42. Display the latest hired staff member in each department.
A.  select *
    from(
      select staff_id,staff_name,hire_date,
      dense_rank() over (partition by s.department_id order by hire_date desc) as hire_rank
      from Staff s
      left join Department d
      on s.department_id = d.department_id
     )x
    where hire_rank = 1

43. Divide students into 4 CGPA quartiles using NTILE().
A.  select student_id,student_name,cgpa,
    ntile(4) over(order by cgpa desc) as cgpa_quartile
    from Student

44. Find percentage rank of students based on CGPA.
A.  select student_id, student_name, cgpa,
    percent_rank() over(order by cgpa desc) as rank_percentage
    from Student

45. Display cumulative distribution of salaries.
A.  select staff_name,salary,
    cume_dist() over (order by salary) as cumulative_distribution
    from Staff

46. Find subjects where a student's marks are above the subject average.
A.  select *
    from (
       select s.student_name,sub.subject_name,m.marks,
       avg(m.marks) over (partition by m.subject_id) as subject_avg
       from Mark m
       join Student s
       on m.student_id = s.student_id
       join Subject sub
       on m.subject_id = sub.subject_id
      ) x
    where marks > subject_avg;
    
47. Find departments whose average staff salary is higher than overall average salary.
A.  select department_name, salary_avg,overall_avg
    from (
       select d.department_id,d.department_name,
       avg(s.salary) over (partition by d.department_id) as salary_avg,
       avg(s.salary) over () as overall_avg
       from Staff s
       join Department d
       on s.department_id = d.department_id
      ) x
    where salary_avg > overall_avg

48. Display students who scored above department average marks.
A.  select student_name
    from (
       select s.student_id,student_name,marks,
       avg(m.marks) over (partition by s.department_id) as department_avg
       from Mark m
       join Student s
       on m.student_id = s.student_id
       join Department d
       on s.department_id = d.department_id
      ) x
    where marks> department_avg

49. Find the nth highest mark (3rd highest) using DENSE_RANK().
A.  select *
    from (
       select marks,
       dense_rank() over(order by marks desc) as dense_ran
       from Mark
      ) x
    where dense_ran = 3

50. Generate a report showing student name, department, subject, exam type, marks, department average, and overall rank.
A.  select s.student_name,d.department_name,sub.subject_name,m.exam_type,m.marks,
    avg(m.marks) over(partition by d.department_id) as department_average,
    dense_rank() over(order by m.marks desc) as overall_rank
    from Mark m
    join Student s
    on m.student_id = s.student_id
    join Department d
    on s.department_id = d.department_id
    join Subject sub
    on m.subject_id = sub.subject_id

