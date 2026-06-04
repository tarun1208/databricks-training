# 🚀 SQL Window Functions & Advanced Analytics Practice

## 📌 Introduction

This repository contains a **collection of SQL Window Function and Analytical Queries** designed to improve understanding of advanced SQL concepts using a sample academic database consisting of:

* **Students**
* **Departments**
* **Staff**
* **Subjects**
* **Marks**

The queries focus mainly on:

✅ **Window Functions**
✅ **Ranking Functions**
✅ **Running Totals & Moving Averages**
✅ **Analytical SQL Queries**
✅ **Department-wise & Subject-wise Analysis**
✅ **Interview-Oriented SQL Practice**

---

# 🗂️ Database Schema

## 👨‍🎓 Student Table

| Column Name      | Description                        |
| ---------------- | ---------------------------------- |
| `student_id`     | Primary Key                        |
| `student_name`   | Student Name                       |
| `department_id`  | Foreign Key referencing Department |
| `cgpa`           | Student CGPA                       |
| `admission_year` | Year of Admission                  |
| `city`           | Student City                       |

---

## 🏢 Department Table

| Column Name       | Description     |
| ----------------- | --------------- |
| `department_id`   | Primary Key     |
| `department_name` | Department Name |

---

## 👨‍🏫 Staff Table

| Column Name     | Description                        |
| --------------- | ---------------------------------- |
| `staff_id`      | Primary Key                        |
| `staff_name`    | Staff Name                         |
| `department_id` | Foreign Key referencing Department |
| `salary`        | Staff Salary                       |
| `hire_date`     | Staff Hiring Date                  |

---

## 📘 Subject Table

| Column Name    | Description                   |
| -------------- | ----------------------------- |
| `subject_id`   | Primary Key                   |
| `subject_name` | Subject Name                  |
| `staff_id`     | Foreign Key referencing Staff |

---

## 📝 Mark Table

| Column Name  | Description                     |
| ------------ | ------------------------------- |
| `mark_id`    | Primary Key                     |
| `student_id` | Foreign Key referencing Student |
| `subject_id` | Foreign Key referencing Subject |
| `exam_type`  | Exam Type                       |
| `exam_date`  | Exam Date                       |
| `marks`      | Student Marks                   |

---

# 🔗 Database Relationships

```text
Departments
    ↑
    |
  Students
    |
    ↓
   Marks
    ↑
    |
  Subjects
    ↑
    |
   Staff
```

---

# 📚 SQL Concepts Covered

## ✅ ROW_NUMBER()

Assign unique row numbers to records.

---

## ✅ RANK()

Assign ranking with skipped ranks for duplicates.

---

## ✅ DENSE_RANK()

Assign ranking without skipping ranks.

---

## ✅ NTILE()

Divide rows into equal groups/buckets.

---

## ✅ PERCENT_RANK()

Calculate percentage ranking of rows.

---

## ✅ CUME_DIST()

Calculate cumulative distribution of rows.

---

## ✅ LAG()

Access previous row values.

---

## ✅ LEAD()

Access next row values.

---

## ✅ Running Totals

Calculate cumulative sums.

---

## ✅ Moving Averages

Calculate cumulative averages over ordered data.

---

## ✅ Analytical Reporting

Generate advanced reports using window functions.

---

# 📊 Topics Practiced

* ROW_NUMBER()
* RANK()
* DENSE_RANK()
* LAG()
* LEAD()
* NTILE()
* PERCENT_RANK()
* CUME_DIST()
* Running Totals
* Moving Averages
* Department-wise Analysis
* Subject-wise Analytics
* Ranking Queries
* Cumulative Calculations

---

# ⚠️ Edge Cases Included

This database includes several important edge cases:

✅ Students without marks
✅ Departments without staff
✅ Subjects without assigned staff
✅ NULL values in salary/marks
✅ Duplicate rankings
✅ Multiple students with same marks
✅ Unmatched records in joins

---

# 🛠️ Technologies Used

* **MySQL**
* **SQL**
* **Window Functions**
* **Relational Database Concepts**

---

# 🎯 Learning Outcomes

By completing these analytical SQL queries, you will gain practical understanding of:

✅ Window Functions in SQL
✅ Ranking and Distribution Functions
✅ Analytical SQL Reporting
✅ Running Totals & Moving Averages
✅ Department-wise Data Analysis
✅ Advanced SQL Problem Solving
✅ Real-world SQL Analytics
✅ SQL Interview Preparation

---

# 🚀 Future Improvements

* Add Common Table Expressions (CTEs)
* Add Recursive CTEs
* Add Stored Procedures
* Add Triggers
* Add Views
* Add Query Optimization Examples
* Add Indexing Concepts
* Add Advanced Reporting Queries
