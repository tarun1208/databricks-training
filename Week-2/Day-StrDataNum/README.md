# StrDataNum SQL

## Overview

This repository contains commonly used SQL functions with:

- purpose
- syntax
- examples
- outputs
- real-time practice queries

The repository focuses on:

- String Functions
- Date Functions
- Numeric Functions
- Mathematical Functions
- CASE Statements
- Real-Time SQL Scenarios

---

# SQL String Functions

| Function | Purpose | Example | Output |
|----------|----------|----------|--------|
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

# SQL Date Functions

| Function | Purpose | Example | Output |
|----------|----------|----------|--------|
| `current_date` | Returns today's date | `current_date` | `2026-05-18` |
| `extract()` | Extracts year/month/day/hour | `extract(year from current_date)` | `2026` |
| `age()` | Calculates difference between dates | `age(current_date,'2020-01-01')` | `6 years` |
| `interval` | Adds/subtracts date intervals | `current_date + interval '7 days'` | `future date` |
| `to_char()` | Formats date or number | `to_char(current_date,'Month')` | `May` |
| `last_day()` | Returns last day of month | `last_day(current_date)` | `2026-05-31` |

---

# SQL Numeric & Mathematical Functions

| Function | Purpose | Example | Output |
|----------|----------|----------|--------|
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

# Example Queries

## String Functions Example

```sql
select
    upper(emp_name),
    lower(emp_name),
    initcap(emp_name),
    length(emp_name)
from employees;
```

---

## Date Functions Example

```sql
select
    current_date,
    extract(year from current_date),
    to_char(current_date,'Day')
from dual;
```

---

## Numeric Functions Example

```sql
select
    round(salary),
    trunc(salary,1),
    floor(salary),
    ceil(salary),
    mod(salary,10)
from employees;
```

---

# Real-Time Use Cases

## Employee Analytics
- attendance monitoring
- login discipline
- productivity calculation

## Financial Analysis
- salary audits
- tax calculations
- emi projections

## Fraud Detection
- weekend transactions
- suspicious salary credits
- random audit sampling

## Date Analytics
- fiscal year checks
- aging calculations
- last 7 days tracking

---

# Repository Structure

```text
StrDataNum/
│
├── string_functions/
├── date_functions/
├── numeric_functions/
├── attendance_analysis/
├── salary_analysis/
├── fraud_detection/
├── financial_queries/
└── advanced_case_statements/
```

---

# Database Compatibility

Compatible with:

- PostgreSQL
- MySQL
- Oracle SQL
- SQL Server

> Some functions may require syntax adjustments depending on database type.

---

# Learning Outcomes

By practicing these SQL functions you will learn:

- advanced SQL querying
- real-time analytics
- financial calculations
- HR reporting logic
- audit query building
- CASE statement mastery
- performance analysis

---

# Recommended Learning Path

1. String Functions
2. Date Functions
3. Numeric Functions
4. CASE Statements
5. Real-Time SQL Queries
6. Fraud Detection Logic
7. Optimization Techniques

---


# License

This project is for educational and practice purposes only.
