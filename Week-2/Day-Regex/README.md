# 🚀 SQL Regex

## 📌 Introduction
This repository contains a comprehensive collection of **SQL Regex (Regular Expression) practice queries** designed to improve understanding of:

- Regex Pattern Matching
- String Extraction
- Email Parsing
- Phone Number Parsing
- Numeric & Alphabetic Extraction
- Prefix & Suffix Matching
- Data Cleaning Techniques
- Advanced SQL Text Processing



This project is useful for:

✅ SQL Beginners  
✅ Interview Preparation  
✅ Data Cleaning Practice  
✅ Regex Learning  
✅ Real-World Text Processing  
✅ SQL String Manipulation Practice  

---

# 🗂️ Database Schema

## 📄 regex_practice Table

| Column Name | Description |
|---|---|
| `id` | Record ID |
| `full_text` | Mixed structured text |
| `email` | Email address |
| `phone` | Phone number |
| `mixed_value` | Alphanumeric mixed string |

---

# 📌 Sample Data Included

The dataset contains:

✅ Emails with different domains  
✅ Phone numbers with country codes  
✅ Mixed alphanumeric values  
✅ Underscore-separated values  
✅ Embedded numbers and text  
✅ Multiple email extensions  


---

# 📚 SQL Regex Concepts Covered

# 1️⃣ Start of String (`^`)

Used to match patterns appearing at the beginning.


# 2️⃣ End of String (`$`)

Used to match patterns appearing at the end.



# 3️⃣ Character Sets (`[]`)

Used to match specific character ranges.


# 4️⃣ Quantifiers (`+`, `{}`)

Used to control repetition counts.


# 5️⃣ Capturing Groups (`()`)

Used to extract specific portions of text.



# 6️⃣ Literal Special Characters

Escaping special regex symbols.



# 7️⃣ Numeric Extraction

Extract numbers from strings.


# 8️⃣ Alphabetic Extraction

Extract alphabetic sequences.


# 9️⃣ Email Parsing

Extract:
- Username
- Domain
- Extension



# 🔟 Phone Number Parsing

Extract:
- Country code
- Prefixes



# 1️⃣1️⃣ Prefix & Suffix Matching

Extract:
- First characters
- Last characters


# 📊 Topics Practiced

| Query Numbers | Topic |
|---|---|
| 1 – 5 | Basic Regex Extraction |
| 6 – 10 | Numeric Pattern Extraction |
| 11 – 15 | Alphabetic Pattern Extraction |
| 16 – 20 | Email Regex Queries |
| 21 – 25 | Phone Number Regex |
| 26 – 30 | Prefix & Suffix Extraction |
| 31 – 35 | Capturing Groups |
| 36 – 40 | Advanced Regex Matching |

---

# 🧠 Skills Practiced

✅ Regex Pattern Matching  
✅ String Manipulation  
✅ Email Extraction  
✅ Phone Parsing  
✅ Numeric Extraction  
✅ Alphabetic Extraction  
✅ Data Cleaning  
✅ SQL Regex Functions  
✅ Real-World Data Processing  

---

# 🔥 Important Regex Symbols Practiced

| Symbol | Meaning |
|---|---|
| `^` | Start of string |
| `$` | End of string |
| `[]` | Character set |
| `[^ ]` | Negation |
| `+` | One or more occurrences |
| `{n}` | Exact repetitions |
| `()` | Capturing groups |
| `.` | Any single character |
| `\.` | Literal dot |
| `\+` | Literal plus sign |
| `\d` | Digits |
| `\w` | Word characters |
| `\s` | Whitespace |

---

# 🔍 Sample Regex Queries

## ✅ Extract Numbers

```sql
SELECT SUBSTRING(mixed_value FROM '[0-9]+')
FROM regex_practice;
```

---

## ✅ Extract Alphabetic Characters

```sql
SELECT SUBSTRING(mixed_value FROM '[A-Za-z]+')
FROM regex_practice;
```

---

## ✅ Extract Email Username

```sql
SELECT SUBSTRING(email FROM '^[^@]+')
FROM regex_practice;
```

---

## ✅ Extract Email Domain

```sql
SELECT SUBSTRING(email FROM '@(.+)$')
FROM regex_practice;
```

---

## ✅ Extract Country Code

```sql
SELECT SUBSTRING(phone FROM '^\+([0-9]+)')
FROM regex_practice;
```

---

# ⚠️ Edge Cases Included

This dataset contains important regex edge cases:

✅ Multiple numeric sequences  
✅ Mixed uppercase/lowercase values  
✅ Country codes with varying lengths  
✅ Multiple dots in email domains  
✅ Embedded numbers between text  
✅ Prefix and suffix extraction  
✅ Underscore-separated structures  

---

# 🛠️ Technologies Used

- SQL
- PostgreSQL
- MySQL
- Regular Expressions (Regex)
- Relational Database Concepts

---

# 🎯 Learning Outcomes

By completing these Regex queries, you will learn:

✅ Writing regex patterns in SQL  
✅ Extracting complex string patterns  
✅ Parsing emails and phone numbers  
✅ Cleaning inconsistent data  
✅ Using anchors and quantifiers  
✅ Using capturing groups effectively  
✅ Solving interview-level regex SQL problems  

---

# 🚀 Future Improvements

- Add REGEXP_REPLACE()
- Add REGEXP_SPLIT_TO_TABLE()
- Add Password Validation Regex
- Add URL Parsing Queries
- Add Advanced Email Validation
- Add Recursive Regex Examples
- Add Data Cleaning Projects
- Add Regex-Based Analytics

---

# 📌 Regex vs LIKE

| LIKE | Regex |
|---|---|
| Simple pattern matching | Advanced pattern matching |
| Uses `%` and `_` | Uses complex regex patterns |
| Limited functionality | Powerful text extraction |
| Easy filtering | Advanced validation & parsing |

---

# 📖 Learning Summary

This project helps in understanding:

✅ Regex Anchors  
✅ Quantifiers  
✅ Character Classes  
✅ Capturing Groups  
✅ SQL String Functions  
✅ Email & Phone Parsing  
✅ Advanced Pattern Matching  
✅ Real-World SQL Text Processing  

---
