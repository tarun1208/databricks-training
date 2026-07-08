# 🚀 Phase 3 – ETL Pipeline & Data Engineering with PySpark

![Apache Spark](https://img.shields.io/badge/Apache%20Spark-Big%20Data-red)
![PySpark](https://img.shields.io/badge/PySpark-Data%20Engineering-orange)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue)
![ETL](https://img.shields.io/badge/ETL-Pipeline-success)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

# 📌 Project Overview

This repository contains my **Phase 3 Data Engineering Practice**, where I designed and implemented **ETL (Extract, Transform, Load) pipelines** using **PySpark** and **Spark SQL**.

The project focuses on transforming raw business datasets into meaningful analytical reports by applying real-world data engineering concepts such as:

- Data Extraction
- Data Cleaning
- Schema Inspection
- Data Transformation
- Joins
- Aggregations
- Window Functions
- Reporting Pipelines

The exercises simulate practical business scenarios commonly encountered in data engineering projects.

---

# 🎯 Learning Objectives

During this phase, I learned how to:

- Build ETL pipelines
- Read structured datasets using PySpark
- Inspect and validate schemas
- Clean and transform raw data
- Handle missing and invalid values
- Join multiple datasets
- Generate analytical reports
- Apply SQL and PySpark for business analytics
- Work with Spark DataFrames efficiently

---

# 🛠️ Technologies Used

- Apache Spark
- PySpark
- Spark SQL
- SQL
- Python
- Git
- GitHub
- VS Code
- Spark Playground

---

# 📂 Project Structure

```
phase-3/
│
├── SQL/
│   ├── exercise1.sql
│   ├── exercise2.sql
│   ├── exercise3.sql
│   ├── exercise4.sql
│   └── exercise5.sql
│
├── PySpark/
│   ├── exercise1.py
│   ├── exercise2.py
│   ├── exercise3.py
│   ├── exercise4.py
│   └── exercise5.py
│
├── Screenshots/
│   ├── exercise1_sql.png
│   ├── exercise1_pyspark.png
│   ├── exercise2_sql.png
│   ├── exercise2_pyspark.png
│   ├── exercise3_sql.png
│   ├── exercise3_pyspark.png
│   ├── exercise4_sql.png
│   ├── exercise4_pyspark.png
│   ├── exercise5_sql.png
│   └── exercise5_pyspark.png
│
├── README.md
│
└── .gitignore
```

---

# 📚 Exercises Completed

## ✅ Exercise 1 – Daily Sales Revenue Pipeline

### Objective

Read sales data, clean missing values, convert data types, and calculate daily sales revenue.

### Concepts Practiced

- CSV Data Reading
- Schema Inspection
- Data Cleaning
- Type Conversion
- GROUP BY
- SUM()
- ETL Pipeline

---

## ✅ Exercise 2 – City-wise Revenue Analysis

### Objective

Join customer and sales datasets to calculate revenue generated from each city.

### Concepts Practiced

- INNER JOIN
- Data Validation
- Data Cleaning
- GROUP BY
- SUM()
- Business Reporting

---

## ✅ Exercise 3 – Repeat Customer Analysis

### Objective

Identify customers who have made more than two purchases.

### Concepts Practiced

- COUNT()
- GROUP BY
- HAVING
- Customer Segmentation
- Analytical Reporting

---

## ✅ Exercise 4 – Highest Spending Customer in Each City

### Objective

Identify the highest spending customer for every city.

### Concepts Practiced

- Window Functions
- ROW_NUMBER()
- PARTITION BY
- Ranking
- Business Intelligence

---

## ✅ Exercise 5 – Customer Sales Reporting Pipeline

### Objective

Generate a complete customer sales report including total spending and purchase count.

### Concepts Practiced

- ETL Workflow
- JOIN
- Aggregation
- SUM()
- COUNT()
- Final Reporting

---

# 🔄 ETL Workflow Implemented

```
Extract
   │
   ▼
Read CSV Files
   │
   ▼
Schema Inspection
   │
   ▼
Data Cleaning
   │
   ▼
Data Type Conversion
   │
   ▼
Join Datasets
   │
   ▼
Data Transformation
   │
   ▼
Aggregation
   │
   ▼
Business Report Generation
```

---

# 📖 SQL Concepts Practiced

- SELECT
- FROM
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- INNER JOIN
- LEFT JOIN
- SUM()
- COUNT()
- AVG()
- Window Functions
- ROW_NUMBER()

---

# ⚡ PySpark Concepts Practiced

- SparkSession
- DataFrame API
- read.csv()
- printSchema()
- withColumn()
- cast()
- dropna()
- fillna()
- groupBy()
- agg()
- join()
- filter()
- orderBy()
- alias()
- createOrReplaceTempView()
- spark.sql()
- Window
- partitionBy()
- row_number()

---

# 💼 Data Engineering Skills Demonstrated

- ETL Pipeline Development
- Data Cleaning
- Data Validation
- Data Transformation
- Schema Management
- Data Aggregation
- Analytical Reporting
- Window Functions
- Business Intelligence
- SQL to PySpark Conversion
- Apache Spark Fundamentals
- Big Data Processing

---

# ▶️ How to Run

## Clone Repository

```bash
git clone https://github.com/tarun1208/databricks-training.git
```

---


# 📊 Business Reports Generated

This project generates reports such as:

- Daily Sales Revenue
- City-wise Revenue
- Repeat Customers
- Highest Spending Customer by City
- Customer Sales Report

These reports simulate common business analytics requirements in retail and e-commerce organizations.

---

# 📷 Output Screenshots

The **Screenshots** folder contains execution outputs for every SQL and PySpark exercise.

This allows anyone reviewing the repository to verify the implementation and results.

---

# 🌟 Key Takeaways

Through this project, I strengthened my understanding of:

- ETL Pipeline Design
- Data Engineering Fundamentals
- Apache Spark
- PySpark DataFrame API
- Spark SQL
- Data Cleaning Techniques
- Business Data Analysis
- Reporting Pipelines
- SQL to PySpark Translation
- Real-world Data Processing Workflows

---