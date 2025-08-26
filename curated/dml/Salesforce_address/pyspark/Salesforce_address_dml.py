# DML Operations for Salesforce_address
# Generated on: 2025-08-26T11:38:39.326Z

from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *

# Initialize Spark session
spark = SparkSession.builder \
    .appName("Salesforce_address_DML_Operations") \
    .config("spark.sql.adaptive.enabled", "true") \
    .getOrCreate()

# Read raw data
raw_df = spark.read.parquet("path/to/raw/Salesforce_address")

# Read existing curated data
curated_df = spark.read.parquet("path/to/curated/Salesforce_address")

# Insert new records
new_records = raw_df.join(curated_df, "id", "left_anti")
if new_records.count() > 0:
    # Transform new records according to mappings
    transformed_new = new_records.select(
        col("AddressID").alias("AddressID"),
        col("CustomerID").alias("CustomerID"),
        col("Street").alias("Street"),
        col("City").alias("City"),
        col("State").alias("State"),
        col("Postcode").alias("Postcode"),
        col("Country").alias("Country"),
        col("AddressType").alias("AddressType")
    )
    
    # Add control columns
    transformed_new = transformed_new.withColumn("created_at", current_timestamp()) \
        .withColumn("updated_at", current_timestamp()) \
        .withColumn("version", lit(1)) \
        .withColumn("is_deleted", lit(False))
    
    # Append to curated table
    transformed_new.write.mode("append").parquet("path/to/curated/Salesforce_address")

# Update existing records
existing_records = raw_df.join(curated_df, "id", "inner")
if existing_records.count() > 0:
    # Update logic here
    updated_records = existing_records.withColumn("updated_at", current_timestamp()) \
        .withColumn("version", col("version") + 1)
    
    # Write updated records (overwrite mode for simplicity)
    updated_records.write.mode("overwrite").parquet("path/to/curated/Salesforce_address_updated")

# Soft delete records that no longer exist in raw
deleted_records = curated_df.join(raw_df, "id", "left_anti")
if deleted_records.count() > 0:
    deleted_records = deleted_records.withColumn("is_deleted", lit(True)) \
        .withColumn("updated_at", current_timestamp())
    
    # Write deleted records
    deleted_records.write.mode("append").parquet("path/to/curated/Salesforce_address_deleted")

spark.stop()
