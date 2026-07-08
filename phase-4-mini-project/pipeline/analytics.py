from pyspark.sql.functions import (sum, count, col, when,desc)

# ---------------------------------------------------
# Daily Sales
# ---------------------------------------------------

def daily_sales_report(sales_df):

    return sales_df.groupBy("sale_date")\
        .agg(sum("total_amount").alias("daily_sales"))\
        .orderBy("sale_date")


# ---------------------------------------------------
# Revenue by City
# ---------------------------------------------------

def city_revenue_report(customers_df, sales_df):

    return customers_df.join(sales_df,"customer_id")\
        .groupBy("city")\
        .agg(sum("total_amount").alias("city_revenue"))\
        .orderBy(desc("city_revenue"))


# ---------------------------------------------------
# Top 5 Customers
# ---------------------------------------------------

def top_customers_report(customers_df, sales_df):

    return customers_df.join(sales_df,"customer_id")\
    .groupBy("customer_id", "first_name", "last_name")\
    .agg(sum("total_amount").alias("total_spend"))\
    .orderBy(desc("total_spend"))\
    .limit(5)


# ---------------------------------------------------
# Repeat Customers
# ---------------------------------------------------

def repeat_customers_report(customers_df, sales_df):

    return customers_df.join(sales_df, "customer_id")\
    .groupBy("customer_id", "first_name","last_name")\
    .agg(count("sale_id").alias("orders"))\
    .filter(col("orders") > 1)


# ---------------------------------------------------
# Customer Segmentation
# ---------------------------------------------------

def customer_segmentation(customers_df, sales_df):

    report = customers_df.join(sales_df, "customer_id")\
    .groupBy("customer_id", "first_name", "last_name")\
    .agg(sum("total_amount").alias("total_spend"))

    report = report.withColumn("segment",
        when(col("total_spend") >= 100, "Gold")
        .when(col("total_spend") >= 50, "Silver")
        .otherwise("Bronze")
    )

    return report


# ---------------------------------------------------
# Final Business Report
# ---------------------------------------------------

def final_report(customers_df, sales_df):

    report = customers_df.join(sales_df,"customer_id")\
    .groupBy("customer_id", "first_name", "last_name", "city")\
    .agg(sum("total_amount").alias("total_spend"),
        count("sale_id").alias("total_orders"))

    report = report.withColumn("segment",
        when(col("total_spend") >= 100, "Gold")
        .when(col("total_spend") >= 50, "Silver")
        .otherwise("Bronze")
    )

    return report.orderBy(desc("total_spend"))