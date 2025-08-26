# ALTER Commands for Entity: Salesforce_contact_point
# Generated on: 2025-08-26T09:11:15.851Z
# These commands handle schema changes when new columns are added or existing columns are modified

from pyspark.sql import SparkSession
from pyspark.sql.functions import *
from pyspark.sql.types import *

# Initialize Spark session
spark = SparkSession.builder \
    .appName("Salesforce_contact_point_Schema_Changes") \
    .config("spark.sql.adaptive.enabled", "true") \
    .getOrCreate()

# Add control columns for data lineage
def add_control_columns(df):
    """Add control columns for data lineage and auditability"""
    df = df.withColumn("_ingest_timestamp", current_timestamp())
    df = df.withColumn("_source_system", lit("raw_Salesforce_contact_point"))
    df = df.withColumn("_record_status", lit("valid"))
    df = df.withColumn("_update_timestamp", current_timestamp())
    df = df.withColumn("_batch_id", lit("batch_1756199475851"))
    df = df.withColumn("_created_by", lit("system"))
    df = df.withColumn("_updated_by", lit("system"))
    return df

# Schema evolution functions
def evolve_schema(df, new_schema):
    """Evolve the dataframe schema to match new requirements"""
    current_schema = df.schema
    
    # Add missing columns
    for field in new_schema.fields:
        if field.name not in [f.name for f in current_schema.fields]:
            df = df.withColumn(field.name, lit(None).cast(field.dataType))
    
    return df

# Column modification functions
def modify_column_type(df, column_name, new_type):
    """Modify column data type"""
    return df.withColumn(column_name, col(column_name).cast(new_type))

def rename_column(df, old_name, new_name):
    """Rename a column"""
    return df.withColumnRenamed(old_name, new_name)

# Main execution
if __name__ == "__main__":
    # Read existing data
    df = spark.read.parquet("path/to/curated/Salesforce_contact_point")
    
    # Apply schema changes
    df = add_control_columns(df)
    
    # Write updated schema
    df.write.mode("overwrite").parquet("path/to/curated/Salesforce_contact_point_updated")
    
    print("Schema changes applied successfully")
    
    # Show final schema
    df.printSchema()
    
    spark.stop()
