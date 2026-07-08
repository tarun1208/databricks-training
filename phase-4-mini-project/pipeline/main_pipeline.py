from extract import create_spark_session, extract_data
from transform import (clean_customers, clean_sales, clean_products)
from analytics import (daily_sales_report, city_revenue_report, top_customers_report, repeat_customers_report, customer_segmentation, final_report)
from load import save_report


def main():

    print("=" * 60)
    print("PHASE 4 MINI PROJECT - ETL PIPELINE")
    print("=" * 60)

    # Create Spark Session

    spark = create_spark_session()
    print("Spark Session Created")

    # Extract

    customers_df, sales_df, products_df = extract_data(spark)
    print("Datasets Loaded Successfully")

    # Transform

    customers_df = clean_customers(customers_df)
    sales_df = clean_sales(sales_df)
    products_df = clean_products(products_df)
    print("Data Cleaning Completed")

    # Analytics

    daily_sales = daily_sales_report(sales_df)

    city_revenue = city_revenue_report(customers_df, sales_df)

    top_customers = top_customers_report(customers_df, sales_df)

    repeat_customers = repeat_customers_report(customers_df, sales_df)

    customer_segments = customer_segmentation(customers_df, sales_df)

    final_business_report = final_report(customers_df, sales_df)

    print("Business Reports Generated")

    # Display Reports

    print("\nDaily Sales")
    daily_sales.show()

    print("\nCity Revenue")
    city_revenue.show()

    print("\nTop Customers")
    top_customers.show()

    print("\nRepeat Customers")
    repeat_customers.show()

    print("\nCustomer Segmentation")
    customer_segments.show()

    print("\nFinal Report")
    final_business_report.show()

    # Save Reports

    save_report(daily_sales, "../output/daily_sales")

    save_report(city_revenue, "../output/city_revenue")

    save_report(top_customers, "../output/top_customers")

    save_report(repeat_customers, "../output/repeat_customers")

    save_report(customer_segments, "../output/customer_segments")

    save_report(final_business_report, "../output/final_report")

    print("=" * 60)
    print("ETL PIPELINE COMPLETED SUCCESSFULLY")
    print("=" * 60)

    spark.stop()


if __name__ == "__main__":
    main()