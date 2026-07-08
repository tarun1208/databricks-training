from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum

spark = SparkSession.builder.appName("Exercise1_PySpark").getOrCreate()
sales = spark.read.option("header", "true").csv("/samples/sales.csv")

sales = sales.dropna()
sales = sales.withColumn("total_amount", col("total_amount").cast("double"))

daily_sales = sales.groupBy("sale_date") \
              .agg(sum("total_amount").alias("daily_revenue")) \
              .orderBy("sale_date")

daily_sales.show()