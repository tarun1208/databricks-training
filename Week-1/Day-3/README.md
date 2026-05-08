# 🚀 SQL Joins Practice Queries (Students–Courses–Instructors Database)

## 📌 Introduction
This repository contains a **collection of SQL JOIN practice queries** designed to improve understanding of relational database operations using a sample database consisting of:

- **Students**
- **Courses**
- **Enrollments**
- **Instructors**

The queries focus mainly on:

✅ **SQL JOIN Operations**  
✅ **Many-to-Many Relationships**  
✅ **Handling NULL Values**  
✅ **Database Relationship Understanding**  
✅ **Interview-Oriented SQL Practice**

---

# 🗂️ Database Schema

## 👨‍🎓 Students Table

| Column Name | Description |
|---|---|
| `student_id` | Primary Key |
| `student_name` | Student Name |
| `email` | Student Email |

---

## 👨‍🏫 Instructors Table

| Column Name | Description |
|---|---|
| `instructor_id` | Primary Key |
| `instructor_name` | Instructor Name |
| `department` | Instructor Department |

---

## 📘 Courses Table

| Column Name | Description |
|---|---|
| `course_id` | Primary Key |
| `course_name` | Course Name |
| `instructor_id` | Foreign Key referencing Instructors |

---

## 📝 Enrollments Table

| Column Name | Description |
|---|---|
| `enrollment_id` | Primary Key |
| `student_id` | Foreign Key referencing Students |
| `course_id` | Foreign Key referencing Courses |
| `enrollment_date` | Enrollment Date |

---

# 🔗 Database Relationships

```text
Instructors
     ↑
     |
  Courses
     ↑
     |
Enrollments
     ↑
     |
 Students
```

---

# 📚 SQL Concepts Covered

## ✅ INNER JOIN
Retrieve matching records between related tables.



## ✅ LEFT JOIN
Retrieve all rows from the left table including unmatched rows.


## ✅ RIGHT JOIN
Retrieve all rows from the right table including unmatched rows.


## ✅ FULL OUTER JOIN
Retrieve all matching and unmatched rows from both tables.


## ✅ CROSS JOIN / Cartesian Join / Product Join
Generates every possible combination of rows.


## ✅ SELF JOIN
Join a table with itself.


## ✅ NATURAL JOIN
Automatically joins using columns with the same name.

---

# 📊 Topics Practiced

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- CROSS JOIN
- SELF JOIN
- NATURAL JOIN

---

# ⚠️ Edge Cases Included

This database includes several important edge cases:

✅ Students without enrollments  
✅ Courses without instructors  
✅ Courses without enrollments  
✅ NULL foreign keys  
✅ Unmatched rows for JOIN operations

---

# 🛠️ Technologies Used

- **PostgreSQL**
- **MySQL**
- **SQL**
- **Relational Database Concepts**

---

# 🎯 Learning Outcomes

By completing these JOIN queries, you will gain practical understanding of:

✅ Relational database design  
✅ JOIN operations in SQL  
✅ Handling unmatched records  
✅ Working with many-to-many relationships  
✅ Real-world database querying  
✅ SQL interview problem solving

---

# 🚀 Future Improvements

- Add Window Functions
- Add CTEs (`WITH`)
- Add Stored Procedures
- Add Triggers
- Add Views
- Add Query Optimization Examples

