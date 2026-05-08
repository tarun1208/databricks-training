# 🚀 SQL Practice Queries (Employee–Department–Project Database)

## 📌 Introduction
This repository contains a **well-structured collection of 65 SQL practice queries** designed to strengthen core and advanced database concepts using a simple relational database schema consisting of:

- **Employee**
- **Department**
- **Project**

The project is highly useful for:

✅ **Academic Practice**  
✅ **SQL Interview Preparation**  
✅ **Improving Practical Database Skills**  
✅ **Learning Real-World SQL Query Writing**

---

# 🗂️ Database Schema

## 👨‍💼 Employee Table

| Column Name | Description |
|---|---|
| `emp_id` | Primary Key |
| `name` | Employee Name |
| `age` | Employee Age |
| `salary` | Employee Salary |
| `department_id` | Foreign Key referencing Department |
| `hire_date` | Employee Hiring Date |

---

## 🏢 Department Table

| Column Name | Description |
|---|---|
| `department_id` | Primary Key |
| `name` | Department Name |

---

## 📁 Project Table

| Column Name | Description |
|---|---|
| `project_id` | Primary Key |
| `name` | Project Name |
| `department_id` | Foreign Key referencing Department |

---

# 🔗 Database Relationships

```text
Department
   ↑
   |
Employee

Department
   ↑
   |
Project
```

---

# 📚 Topics Covered

## ✅ Basic SQL Operations
- `SELECT`
- `WHERE`
- `DISTINCT`
- `LIKE`
- String Functions
- Conditional Filtering

---

## 📅 Working with Dates
- Filtering using `YEAR()` and `MONTH()`
- Selecting records within date ranges
- Using:
  - `CURDATE()`
  - `DATE_SUB()`
  - `BETWEEN`

---

## 📊 Aggregate Functions
- `SUM()` → Total values
- `AVG()` → Average values
- `MIN()` / `MAX()` → Extreme values
- `COUNT()` → Record counting

---

## 🧩 Grouping & Filtering
- `GROUP BY`
- `HAVING`
- Department-wise calculations
- Aggregate-based filtering

---

## 🔃 Sorting Data
- `ORDER BY`
- Ascending (`ASC`)
- Descending (`DESC`)
- Multi-column sorting

---

## 🔗 SQL Joins
- `INNER JOIN`
- `LEFT JOIN`
- Multi-table joins
- Handling `NULL` values

---

## 🧠 Subqueries
- Scalar Subqueries
- Nested Queries
- Correlated Subqueries

---

## 🔥 Advanced SQL Concepts
- Finding **2nd Highest Salary**
- Finding **Nth Highest Salary**
- Employees earning above department average
- Department-wise comparisons
- Departments without employees
- Employees not assigned to projects
- Aggregate comparisons using nested queries

---

# 📈 Query Classification

| Query Range | Description |
|---|---|
| **1 – 15** | Basic Selection & Filtering |
| **16 – 30** | Aggregation & Grouping |
| **31 – 35** | Sorting Queries |
| **36 – 43** | SQL Joins |
| **44 – 65** | Subqueries & Advanced SQL Logic |

---

# ⚠️ Edge Cases Included

This project also handles important edge cases such as:

✅ Employees without departments  
✅ Projects without departments  
✅ Departments with multiple employees  
✅ Departments without employees  
✅ NULL value handling in joins and conditions

---

# 🛠️ Technologies Used

- **MySQL**
- **SQL**
- **Relational Database Concepts**

---

# 🎯 Learning Outcomes

By completing these queries, you will gain practical experience in:

✅ Writing optimized SQL queries  
✅ Understanding relational database design  
✅ Using joins and subqueries effectively  
✅ Handling real-world SQL scenarios  
✅ Performing data aggregation and filtering  
✅ Improving problem-solving skills in SQL

---

# 👨‍💻 Author

Developed as part of **SQL practice, interview preparation, and database learning exercises**.
