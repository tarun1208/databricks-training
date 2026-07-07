from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum

spark = SparkSession.builder.appName("Exercise1_PySpark").getOrCreate()
sales = spark.read.option("header", "true").csv("/samples/sales.csv")

result = sales.groupBy("customer_id").agg(sum("total_amount").alias("total_sales"))
result.show()