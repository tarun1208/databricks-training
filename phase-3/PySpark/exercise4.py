from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum, row_number
from pyspark.sql.window import Window

spark = SparkSession.builder.appName("Exercise4_PySpark").getOrCreate()
customers = spark.read.option("header","true").csv("/samples/customers.csv")
sales = spark.read.option("header","true").csv("/samples/sales.csv")

sales = sales.withColumn("total_amount",col("total_amount").cast("double"))
customer_spending = customers.join(sales,"customer_id")\
    .groupBy("customer_id", "first_name", "last_name","city")\
    .agg(sum("total_amount").alias("total_spend"))

window_spec = Window.partitionBy("city").orderBy(col("total_spend").desc())
result = customer_spending.withColumn("rank",row_number().over(window_spec))\
    .filter(col("rank") == 1)

result.show()