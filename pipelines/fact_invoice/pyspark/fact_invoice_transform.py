# PySpark Code for Entity: fact_invoice
from pyspark.sql import SparkSession
from pyspark.sql.functions import *

# Initialize Spark session
spark = SparkSession.builder.appName("fact_invoice_processing").getOrCreate()

# Read the raw data
df = spark.read.format("csv").option("header", "true").load("path/to/raw/data")

# Apply transformations
# Write the processed data
df.write.mode("overwrite").parquet("path/to/curated/data")

spark.stop()
