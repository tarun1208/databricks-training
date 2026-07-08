from pyspark.sql import SparkSession
from pyspark.sql.functions import count, col

spark = SparkSession.builder.appName("Exercise3_PySpark").getOrCreate()
sales = spark.read.option("header","true").csv("/samples/sales.csv")

repeat_customers = sales.groupBy("customer_id") \
    .agg(count("sale_id").alias("purchase_count")) \
    .filter(col("purchase_count") > 2) \
    .orderBy(col("purchase_count").desc())

repeat_customers.show()