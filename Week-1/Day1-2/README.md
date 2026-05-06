SQL Practice Queries (Employee–Department–Project Database)
Introduction
This repository includes a well-organized set of 65 SQL queries designed to help build a strong understanding of database concepts. The queries are based on a simple schema involving Employee, Department, and Project tables

It is useful for:

Academic practice
Interview preparation
Strengthening practical SQL skills
Database Structure

Employee Table

emp_id (Primary Key)
name
age
salary
department_id (Foreign Key)
hire_date
Department Table

department_id (Primary Key)
name
Project Table

project_id (Primary Key)
name
department_id (Foreign Key)
Topics Covered Basic SQL Operations

Selecting all or specific columns
Applying conditions using WHERE
Pattern matching with LIKE
Working with string functions
Working with Dates

Filtering using year and month
Selecting data within date ranges
Using functions like CURDATE() and DATE_SUB()
Aggregate Functions

SUM() – total values
AVG() – average values
MIN() / MAX() – extreme values
COUNT() – number of records
Grouping & Filtering

Using GROUP BY for categorized data
Applying conditions on groups with HAVING
Sorting Data

Sorting using ORDER BY
Ascending and descending order
Sorting by multiple columns
Joins

INNER JOIN for matching records
LEFT JOIN for complete data retrieval
Combining multiple tables
Subqueries

Simple (scalar) subqueries
Nested queries
Correlated subqueries
Advanced SQL Concepts

Finding 2nd and 3rd highest salaries
Comparing department-wise data
Employees earning above department average
Identifying departments without employees
Finding employees not assigned to projects
Query Breakdown

Range| Description 1 – 15| Basic selection and filtering 16 – 30| Aggregation and grouping 31 – 35| Sorting 36 – 43| Joins 44 – 65| Subqueries and advanced logic
