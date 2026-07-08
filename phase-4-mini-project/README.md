# 🚀 Phase 4 Mini Project – End-to-End ETL Pipeline using PySpark

![Python](https://img.shields.io/badge/Python-3.14-blue)
![PySpark](https://img.shields.io/badge/PySpark-4.1.2-orange)
![Apache Spark](https://img.shields.io/badge/Apache%20Spark-4.1.2-red)
![Pandas](https://img.shields.io/badge/Pandas-Latest-green)

---

# 📌 Project Overview

This project demonstrates the implementation of a complete ETL (Extract, Transform, Load) pipeline using **PySpark**.

The pipeline reads multiple datasets, cleans and transforms the data, generates business insights, and exports analytical reports as CSV files.

This project simulates a real-world Data Engineering workflow commonly used in enterprise environments.

---

# 🎯 Objectives

- Read multiple datasets using PySpark
- Perform data cleaning and preprocessing
- Apply business transformations
- Generate analytical reports
- Export reports to CSV
- Build a modular ETL architecture

---

# 🛠 Tech Stack

- Python 3.14
- Apache Spark 4.1.2
- PySpark 4.1.2
- Pandas
- VS Code
- Git
- GitHub

---

# 📂 Project Structure

```text
PHASE-4-MINI-PROJECT/
│
├── datasets/
│   ├── customers.csv
│   ├── products.csv
│   └── sales.csv
│
├── pipeline/
│   ├── __init__.py
│   ├── extract.py
│   ├── transform.py
│   ├── analytics.py
│   ├── load.py
│   └── main_pipeline.py
│
├── Output/
│   ├── city_revenue/
│   ├── customer_segments/
│   ├── daily_sales/
│   ├── final_report/
│   ├── repeat_customers/
│   └── top_customers/
│
├── Screenshots/
│
├── requirements.txt
│
├── README.md
│
└── .gitignore
```

---

# 🔄 ETL Workflow

```
               Customers.csv
               Products.csv
               Sales.csv
                     │
                     ▼
               Extract Layer
                     │
                     ▼
              Transformation Layer
                     │
                     ▼
              Analytics Layer
                     │
                     ▼
              Load Layer (Pandas)
                     │
                     ▼
              CSV Business Reports
```

---

# 📊 Business Reports Generated

The pipeline generates the following reports:

- Daily Sales Report
- City Revenue Report
- Top Customers Report
- Repeat Customers Report
- Customer Segmentation Report
- Final Business Report

---

# 📦 Prerequisites

Install the following software before running the project.

## 1. Install Python

Download Python 3.14 (or Python 3.12+) from:

https://www.python.org/downloads/

Verify:

```bash
python --version
```

---

## 2. Install Java 17

Download Eclipse Temurin JDK 17 (LTS):

https://adoptium.net/

Verify:

```bash
java -version
```

Expected:

```
openjdk version "17.x.x"
```

---

## 3. Install Apache Spark

Download Spark 4.1.2:

https://spark.apache.org/downloads.html

Extract to:

```
C:\Spark\spark-4.1.2-bin-hadoop3
```

---

## 4. Configure Environment Variables

Create:

### JAVA_HOME

```
C:\Program Files\Eclipse Adoptium\jdk-17.x.x
```

### SPARK_HOME

```
C:\Spark\spark-4.1.2-bin-hadoop3
```

Add to PATH:

```
%JAVA_HOME%\bin
```

```
%SPARK_HOME%\bin
```

Verify:

```bash
spark-submit --version
```

---

## 5. Clone Repository

```bash
git clone <repository-url>

cd PHASE-4-MINI-PROJECT
```

---

## 6. Install Python Dependencies

```bash
pip install -r requirements.txt
```

---

# ▶ Run the Project

From the project root:

```bash
py -m pipeline.main_pipeline
```

or

```bash
python -m pipeline.main_pipeline
```

---

# 📈 Expected Output

The console displays:

- Spark Session Created
- Datasets Loaded Successfully
- Data Cleaning Completed
- Business Reports Generated

Followed by:

- Daily Sales
- City Revenue
- Top Customers
- Repeat Customers
- Customer Segmentation
- Final Report

---

# 📁 Generated Output

After execution:

```
Output/

daily_sales/

city_revenue/

top_customers/

repeat_customers/

customer_segments/

final_report/
```

Each folder contains

```
report.csv
```

---

# 📚 ETL Layers

## Extract

Reads multiple CSV datasets into Spark DataFrames.

---

## Transform

- Remove null values
- Convert data types
- Prepare clean datasets

---

## Analytics

Generate business insights using

- Aggregations
- Group By
- Joins
- Sorting
- Customer segmentation

---

## Load

The transformed Spark DataFrames are converted to Pandas DataFrames and exported as CSV reports.

Using Pandas for the export step provides reliable cross-platform CSV generation while keeping all ETL and analytics operations in PySpark.

---

# ⚠ Note About Hadoop

This project performs all ETL operations using **PySpark**.

The final report export is handled by **Pandas** instead of Spark's native CSV writer.

This design avoids Windows-specific Hadoop native library issues (`winutils.exe`) while preserving the full ETL workflow.

If deploying on Linux, Databricks, or a Spark cluster, the Pandas export can be replaced with Spark's native `DataFrame.write.csv()`.

---

# 📸 Screenshots

The `Screenshots` folder contains:

- Project Structure
- Pipeline Execution
- Daily Sales Report
- City Revenue Report
- Top Customers Report
- Repeat Customers Report
- Customer Segmentation
- Final Report
- Output Folder

---

# 🚀 Skills Demonstrated

- ETL Pipeline Design
- PySpark
- Spark SQL
- Data Cleaning
- Data Transformation
- Data Aggregation
- Data Engineering
- Business Analytics
- Python
- Pandas
- Git
- GitHub

---
