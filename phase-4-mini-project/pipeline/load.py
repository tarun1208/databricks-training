import os


def save_report(df, output_path):

    os.makedirs(output_path, exist_ok=True)

    pandas_df = df.toPandas()

    output_file = os.path.join(output_path, "report.csv")

    pandas_df.to_csv(output_file, index=False)

    print(f"Saved Successfully -> {output_file}")