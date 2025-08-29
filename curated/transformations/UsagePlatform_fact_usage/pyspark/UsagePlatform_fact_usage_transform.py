# Generated PySpark code for Entity: curated.UsagePlatform_fact_usage
# NLP Description: test 2

from pyspark.sql.functions import col, year, month, dayofmonth, date_format
from pyspark.sql.types import DateType

def transform_entity_dataframe(df):
    """
    Transform entity curated.UsagePlatform_fact_usage based on NLP requirements: test 2
    """
    date_column = 'created_date'
    
    return df.withColumn(
        'formatted_date',
        date_format(col(date_column), 'yyyy-MM-dd')
    ).withColumn(
        'year_extracted',
        year(col(date_column))
    ).withColumn(
        'month_extracted',
        month(col(date_column))
    ).withColumn(
        'day_extracted',
        dayofmonth(col(date_column))
    ).filter(
        col(date_column).isNotNull()
    ).filter(
        col(date_column) != '0000-00-00'
    )