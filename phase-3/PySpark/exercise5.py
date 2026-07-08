from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum, count

spark = SparkSession.builder.appName("Exercise5_PySpark").getOrCreate()
customers = spark.read.option("header","true").csv("/samples/customers.csv")
sales = spark.read.option("header","true").csv("/samples/sales.csv")

sales = sales.withColumn("total_amount",col("total_amount").cast("double"))
report = customers.join(sales,"customer_id")\
    .groupBy("customer_id","first_name","last_name","city")\
    .agg(sum("total_amount").alias("total_spend"),count("sale_id").alias("purchase_count"))\
    .orderBy(col("total_spend").desc())

report.show()