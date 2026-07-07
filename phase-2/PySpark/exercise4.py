from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum

spark = SparkSession.builder.appName("Exercise4_PySpark").getOrCreate()
customers = spark.read.option("header", "true").csv("/samples/customers.csv")
sales = spark.read.option("header", "true").csv("/samples/sales.csv")

result = customers.join(sales,"customer_id")\
          .groupBy("city")\
          .agg(sum("total_amount").alias("total_revenue"))\
          .orderBy(col("total_revenue").desc())
result.show()