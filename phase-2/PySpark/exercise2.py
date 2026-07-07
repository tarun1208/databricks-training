from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum

spark = SparkSession.builder.appName("Exercise2_PySpark").getOrCreate()
sales = spark.read.option("header", "true").csv("/samples/sales.csv")

result = sales.groupBy("customer_id") \
              .agg(sum("total_amount").alias("total_sales")) \
              .orderBy(col("total_sales").desc())

result.show(3)