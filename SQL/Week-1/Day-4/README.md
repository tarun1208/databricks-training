# 🚀 SQL Window Functions & CTE Practice Queries

## 📌 Introduction

This repository contains a **collection of SQL Window Function and CTE practice queries** designed to improve understanding of advanced SQL analytical operations using a sample database consisting of:

* **Employees**
* **Customers**
* **Orders**

The queries focus mainly on:

✅ **SQL Window Functions**
✅ **Ranking Functions**
✅ **Running Totals & Moving Averages**
✅ **LAG() & LEAD() Analysis**
✅ **CTEs (Common Table Expressions)**
✅ **Recursive CTEs**
✅ **Interview-Oriented SQL Practice**

---

# 🗂️ Database Schema

## 👨‍💼 Employees Table

| Column Name     | Description          |
| --------------- | -------------------- |
| `employee_id`   | Primary Key          |
| `employee_name` | Employee Name        |
| `department`    | Employee Department  |
| `manager_id`    | Reporting Manager    |
| `salary`        | Employee Salary      |
| `hire_date`     | Employee Hiring Date |

---

## 👥 Customers Table

| Column Name     | Description   |
| --------------- | ------------- |
| `customer_id`   | Primary Key   |
| `customer_name` | Customer Name |
| `city`          | Customer City |

---

## 🛒 Orders Table

| Column Name    | Description                       |
| -------------- | --------------------------------- |
| `order_id`     | Primary Key                       |
| `customer_id`  | Foreign Key referencing Customers |
| `employee_id`  | Foreign Key referencing Employees |
| `order_date`   | Order Date                        |
| `total_amount` | Total Order Amount                |

---

# 🔗 Database Relationships

```text
Employees
    ↑
    |
  Orders
    |
    ↓
Customers
```

---

# 📚 SQL Concepts Covered

## ✅ ROW_NUMBER()

Assign unique row numbers to rows.

---

## ✅ RANK()

Assign ranking with skipped ranks.

---

## ✅ DENSE_RANK()

Assign ranking without skipping ranks.

---

## ✅ PARTITION BY

Perform calculations within groups.

---

## ✅ Running Totals

Calculate cumulative totals over ordered rows.

---

## ✅ Moving Averages

Calculate rolling averages over rows.

---

## ✅ LAG()

Access previous row values.

---

## ✅ LEAD()

Access next row values.

---

## ✅ NTILE()

Divide rows into equal buckets/groups.

---

## ✅ Common Table Expressions (CTEs)

Create temporary result sets for complex queries.

---

## ✅ Recursive CTEs

Handle hierarchical and recursive data operations.

---

# 📊 Topics Practiced

* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* PARTITION BY
* Running Totals
* Moving Averages
* LAG()
* LEAD()
* NTILE()
* Aggregate Window Functions
* CTEs
* Recursive CTEs
* Employee Ranking
* Customer Sales Analysis
* Department-wise Analytics

---

# ⚠️ Edge Cases Included

This database includes several important edge cases:

✅ Multiple employees in same department
✅ Salary ties for ranking practice
✅ Customers with multiple orders
✅ Recursive employee hierarchy
✅ Department-wise partition analysis
✅ Running total calculations
✅ Previous and next row comparisons

---

# 🛠️ Technologies Used

* **MySQL**
* **SQL**
* **Window Functions**
* **CTEs**
* **Relational Database Concepts**

---

# 🎯 Learning Outcomes

By completing these SQL analytical queries, you will gain practical understanding of:

✅ Window Functions in SQL
✅ Ranking and Analytical Queries
✅ Running Totals & Moving Averages
✅ LAG() and LEAD() operations
✅ Common Table Expressions (CTEs)
✅ Recursive Queries
✅ Department-wise Analysis
✅ Real-world SQL Reporting
✅ SQL Interview Preparation

---

# 🚀 Future Improvements

* Add Advanced Recursive Queries
* Add Query Optimization Examples
* Add Stored Procedures
* Add Views
* Add Triggers
* Add Performance Tuning
* Add Indexing Concepts
* Add Real-world Dashboard Queries

---
