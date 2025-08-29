# PySpark Code for Entity: UsagePlatform_fact_usage
from pyspark.sql import SparkSession
from pyspark.sql.functions import *

# Initialize Spark session
spark = SparkSession.builder.appName("UsagePlatform_fact_usage_processing").getOrCreate()

# Read the raw data
df = spark.read.format("csv").option("header", "true").load("path/to/raw/data")

# Apply transformations
# New columns
df = df.withColumn("plan_name", lit(null).cast("string"))
df = df.withColumn("column2_test", lit(null).cast("string"))

# Write the processed data
df.write.mode("overwrite").parquet("path/to/curated/data")

spark.stop()
