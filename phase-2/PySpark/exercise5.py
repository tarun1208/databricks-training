from pyspark.sql import SparkSession
from pyspark.sql.functions import col, avg

spark = SparkSession.builder.appName("Exercise5_PySpark").getOrCreate()

sales = spark.read.option("header", "true").csv("/samples/sales.csv")

result = sales.groupBy("customer_id") \
    .agg(avg("total_amount").alias("average_sales")) \
    .orderBy(col("average_sales").desc())
result.show()