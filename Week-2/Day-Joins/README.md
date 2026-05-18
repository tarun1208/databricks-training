# 🚀 SQL JOIN Practice – Week 2

## 📌 Introduction
This repository contains a collection of **SQL JOIN practice queries** designed to strengthen understanding of:

- JOIN Operations
- SELF JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- INNER JOIN
- NULL Handling in JOINs
- Employee–Manager Relationships
- Department & Project Mapping

The project uses a simple relational database containing:

- Employees
- Departments
- Projects

This practice set is useful for:

✅ SQL Beginners  
✅ Interview Preparation  
✅ College Lab Practice  
✅ JOIN Concept Mastery  
✅ Real-World Relationship Queries  

---

# 🗂️ Database Schema

## 👨‍💼 Employees Table

| Column Name | Description |
|---|---|
| `emp_id` | Employee ID |
| `emp_name` | Employee Name |
| `manager_id` | Manager Reference |
| `dept_id` | Department ID |

---

## 🏢 Departments Table

| Column Name | Description |
|---|---|
| `dept_id` | Department ID |
| `dept_name` | Department Name |

---

## 📁 Projects Table

| Column Name | Description |
|---|---|
| `project_id` | Project ID |
| `project_name` | Project Name |
| `emp_id` | Assigned Employee ID |

---

# 🔗 Database Relationships

```text
Departments
      ↑
      |
  Employees
      |
      ↓
   Projects

Employees
    ↑
    |
(manager_id)
    |
Employees
```

---

# 📚 SQL Concepts Covered

## ✅ INNER JOIN
Retrieve matching records from multiple tables.

---

## ✅ LEFT JOIN
Retrieve all rows from the left table, including unmatched rows.

---

## ✅ RIGHT JOIN
Retrieve all rows from the right table, including unmatched rows.

---

## ✅ FULL OUTER JOIN
Retrieve all matching and unmatched rows from both tables.

---

## ✅ SELF JOIN
Join a table with itself to retrieve employee-manager relationships.

---

## ✅ NULL Filtering
Practice handling missing departments and projects using:

- `IS NULL`
- `IS NOT NULL`

---

## ✅ Multi-Table JOINs
Queries combining:
- Employees
- Departments
- Projects
- Managers

---

# 📊 Topics Practiced

| Query Numbers | Topic |
|---|---|
| 1 – 5 | Employee & Manager Relationships |
| 6 – 10 | Employee & Project JOINs |
| 11 – 15 | Department JOIN Queries |
| 16 – 20 | FULL OUTER / RIGHT JOIN |
| 21 – 25 | NULL Handling with JOINs |
| 26 – 30 | Complex Multi-Table JOINs |

---

# 🧠 Skills Practiced

✅ JOIN Operations  
✅ SELF JOIN  
✅ Handling NULL Values  
✅ Relationship Mapping  
✅ Multi-Table Querying  
✅ Employee–Manager Hierarchies  
✅ Project Assignment Queries  
✅ Department Analysis  

---

# ⚠️ Edge Cases Included

This database contains important real-world edge cases:

✅ Employees without departments  
✅ Employees without projects  
✅ Departments without employees  
✅ Employees without managers  
✅ Missing relationships  
✅ NULL foreign keys  

---

# 🛠️ Technologies Used

- SQL
- PostgreSQL
- MySQL
- Relational Database Concepts

---

# 🎯 Learning Outcomes

By completing these JOIN queries, you will learn:

✅ Writing efficient JOIN queries  
✅ Understanding relational database design  
✅ Handling unmatched records  
✅ Working with SELF JOINs  
✅ Querying multiple related tables  
✅ Solving interview-level SQL JOIN problems  

---
