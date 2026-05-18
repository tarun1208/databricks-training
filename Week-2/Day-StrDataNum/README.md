# 🚀 StrDataNum SQL

## 📌 Overview

This repository contains a comprehensive collection of commonly used SQL functions with:

- Purpose
- Syntax
- Examples
- Outputs
- Real-Time Practice Queries
- Analytics Scenarios
- Interview-Oriented SQL Concepts

The project focuses on:

✅ String Functions  
✅ Date Functions  
✅ Numeric & Mathematical Functions  
✅ CASE Statements  
✅ Real-Time SQL Analytics  
✅ Business Reporting Queries  
✅ Financial Calculations  
✅ Data Cleaning Techniques  

This repository is useful for:

- SQL Beginners
- Data Analysts
- Data Engineers
- Interview Preparation
- College Database Practice
- Real-Time SQL Learning

---

# 🗂️ Topics Covered

| Module | Description |
|---|---|
| String Functions | Text manipulation and extraction |
| Date Functions | Date calculations and formatting |
| Numeric Functions | Mathematical operations |
| CASE Statements | Conditional logic |
| Analytics Queries | Real-world reporting |
| Financial Queries | Salary and tax calculations |
| Audit Queries | Fraud and anomaly detection |
| Data Cleaning | NULL handling and transformations |

---

# 🔤 SQL String Functions

String functions are used for:

✅ Text formatting  
✅ Text extraction  
✅ Email parsing  
✅ Data cleaning  
✅ Pattern analysis  
✅ Name standardization  

---

| Function | Purpose | Example | Output |
|---|---|---|---|
| `upper()` | Converts text to uppercase | `upper('karthik')` | `KARTHIK` |
| `lower()` | Converts text to lowercase | `lower('KARTHIK')` | `karthik` |
| `initcap()` | Converts first letter of each word to uppercase | `initcap('karthik ravi')` | `Karthik Ravi` |
| `length()` | Returns total number of characters | `length('karthik')` | `8` |
| `left()` | Extracts characters from left side | `left('karthik',3)` | `kar` |
| `right()` | Extracts characters from right side | `right('karthik',2)` | `ik` |
| `reverse()` | Reverses string | `reverse('abc')` | `cba` |
| `ascii()` | Returns ASCII value of first character | `ascii('A')` | `65` |
| `concat()` | Combines multiple strings | `concat('sql',' ','practice')` | `sql practice` |
| `split_part()` | Splits string using delimiter | `split_part('a@gmail.com','@',2)` | `gmail.com` |

---

# 📅 SQL Date Functions

Date functions are used for:

✅ Attendance tracking  
✅ Financial reporting  
✅ Fiscal analysis  
✅ Aging calculations  
✅ Trend analysis  
✅ Time-based analytics  

---

| Function | Purpose | Example | Output |
|---|---|---|---|
| `current_date` | Returns today's date | `current_date` | `2026-05-18` |
| `extract()` | Extracts year/month/day/hour | `extract(year from current_date)` | `2026` |
| `age()` | Calculates difference between dates | `age(current_date,'2020-01-01')` | `6 years` |
| `interval` | Adds/subtracts date intervals | `current_date + interval '7 days'` | `future date` |
| `to_char()` | Formats date or number | `to_char(current_date,'Month')` | `May` |
| `last_day()` | Returns last day of month | `last_day(current_date)` | `2026-05-31` |

---

# 🔢 SQL Numeric & Mathematical Functions

Numeric functions are used for:

✅ Salary calculations  
✅ Tax computations  
✅ EMI calculations  
✅ Profit analysis  
✅ Percentage analysis  
✅ Financial projections  

---

| Function | Purpose | Example | Output |
|---|---|---|---|
| `round()` | Rounds number | `round(125.678,2)` | `125.68` |
| `trunc()` | Removes decimal values | `trunc(125.678,1)` | `125.6` |
| `floor()` | Returns lowest integer | `floor(125.99)` | `125` |
| `ceil()` | Returns highest integer | `ceil(125.01)` | `126` |
| `mod()` | Returns remainder | `mod(10,3)` | `1` |
| `abs()` | Returns positive value | `abs(-500)` | `500` |
| `sign()` | Returns sign of number | `sign(-10)` | `-1` |
| `power()` | Raises number to power | `power(2,3)` | `8` |
| `random()` | Generates random value between 0 and 1 | `random()` | `0.5487` |

---

# 🧠 CASE Statements

CASE statements are used for:

✅ Conditional logic  
✅ Salary categorization  
✅ Grade calculations  
✅ Performance analysis  
✅ Dynamic reporting  

---

## ✅ Syntax

```sql
CASE
    WHEN condition THEN result
    WHEN condition THEN result
    ELSE result
END
```

---

## ✅ Example

```sql
SELECT emp_name,
       salary,
       CASE
           WHEN salary > 80000 THEN 'High Salary'
           WHEN salary > 50000 THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS salary_category
FROM employees;
```

---

# 📊 Example Queries

# 🔤 String Functions Example

```sql
SELECT
    upper(emp_name),
    lower(emp_name),
    initcap(emp_name),
    length(emp_name)
FROM employees;
```

---

# 📅 Date Functions Example

```sql
SELECT
    current_date,
    extract(year FROM current_date),
    to_char(current_date,'Day');
```

---

# 🔢 Numeric Functions Example

```sql
SELECT
    round(salary),
    trunc(salary,1),
    floor(salary),
    ceil(salary),
    mod(salary,10)
FROM employees;
```

---

# 🧠 CASE Statement Example

```sql
SELECT emp_name,
       salary,
       CASE
           WHEN salary >= 90000 THEN 'Excellent'
           WHEN salary >= 60000 THEN 'Good'
           ELSE 'Average'
       END AS performance
FROM employees;
```

---

# 📈 Real-Time Use Cases

# 👨‍💼 Employee Analytics

Used for:

- Attendance monitoring
- Login discipline
- Productivity calculation
- Performance analysis

---

# 💰 Financial Analysis

Used for:

- Salary audits
- Tax calculations
- EMI projections
- Revenue analysis

---

# 🛡️ Fraud Detection

Used for:

- Weekend transactions
- Suspicious salary credits
- Duplicate payments
- Random audit sampling

---

# 📅 Date Analytics

Used for:

- Fiscal year checks
- Aging calculations
- Last 7 days tracking
- Monthly reporting

---

# 🧹 Data Cleaning

Used for:

- Removing NULL values
- Formatting text
- Standardizing names
- Parsing emails

---

# 📂 Repository Structure

```text
StrDataNum/
│
├── string_functions/
├── date_functions/
├── numeric_functions/
├── case_statements/
├── attendance_analysis/
├── salary_analysis/
├── fraud_detection/
├── financial_queries/
├── data_cleaning/
└── advanced_sql_queries/
```

---

# 🛠️ Technologies Used

- SQL
- PostgreSQL
- MySQL
- Oracle SQL
- SQL Server

---

# ⚠️ Database Compatibility

Compatible with:

✅ PostgreSQL  
✅ MySQL  
✅ Oracle SQL  
✅ SQL Server  

> Some functions may require syntax adjustments depending on the database system.

---

# 📖 Learning Outcomes

By practicing these SQL functions you will learn:

✅ Advanced SQL querying  
✅ Real-time analytics  
✅ Financial calculations  
✅ HR reporting logic  
✅ Audit query building  
✅ CASE statement mastery  
✅ Performance analysis  
✅ Data transformation techniques  
✅ Business intelligence concepts  

---

# 🧠 Skills Practiced

✅ Data Retrieval  
✅ Data Formatting  
✅ Numeric Calculations  
✅ Conditional Logic  
✅ Date Manipulation  
✅ Analytical Thinking  
✅ Reporting Queries  
✅ SQL Optimization Basics  

---

# 🚀 Recommended Learning Path

1. String Functions  
2. Date Functions  
3. Numeric Functions  
4. CASE Statements  
5. Real-Time SQL Queries  
6. Fraud Detection Logic  
7. Reporting Queries  
8. Optimization Techniques  

---

# 🔥 Interview Concepts Covered

This repository helps in preparing for:

✅ SQL Developer Interviews  
✅ Data Analyst Interviews  
✅ Data Engineer Interviews  
✅ Database Administrator Interviews  

Important topics:

- Aggregation
- Formatting
- Calculations
- CASE Logic
- Reporting Queries
- Data Cleaning
- Financial Analytics

---

# 📌 Future Improvements

- Add JOIN Practice
- Add Window Functions
- Add CTEs
- Add Regex Functions
- Add Stored Procedures
- Add Triggers
- Add Performance Optimization
- Add Recursive Queries
- Add Advanced Analytics

---
This project is for educational and practice purposes only.

---
