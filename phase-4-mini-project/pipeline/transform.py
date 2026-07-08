from pyspark.sql.functions import col


def clean_customers(customers_df):

    customers_df = customers_df.dropna()
    customers_df = customers_df.dropDuplicates()

    return customers_df


def clean_sales(sales_df):

    sales_df = sales_df.dropna()
    sales_df = sales_df.dropDuplicates()

    sales_df = sales_df.withColumn("quantity", col("quantity").cast("int"))
    sales_df = sales_df.withColumn("total_amount", col("total_amount").cast("double"))

    return sales_df


def clean_products(products_df):

    products_df = products_df.dropna()
    products_df = products_df.dropDuplicates()

    products_df = products_df.withColumn("price", col("price").cast("double"))
    products_df = products_df.withColumn("stock_quantity", col("stock_quantity").cast("int"))

    return products_df