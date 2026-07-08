from pyspark.sql import SparkSession

def create_spark_session():
    spark = SparkSession.builder.appName("Phase 4 Mini Project").getOrCreate()

    return spark

def extract_data(spark):

    customers_df = spark.read.option("header", "true").csv("../datasets/customers.csv")
    sales_df = spark.read.option("header", "true").csv("../datasets/sales.csv")
    products_df = spark.read.option("header", "true").csv("../datasets/products.csv")

    return customers_df, sales_df, products_df