# UsagePlatform_fact_usage Data Pipeline Documentation

## Overview
This document describes the data pipeline for the UsagePlatform_fact_usage entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: UsagePlatform_fact_usage
- **Curated Entity**: UsagePlatform_fact_usage
- **Generated**: 2025-08-26T13:00:45.985Z

## Column Mappings
- **usage_id** → **usage_id**: Direct mapping
- **sub_id** → **sub_id**: Direct mapping
- **usage_date** → **usage_date**: Direct mapping
- **type** → **type**: Direct mapping
- **volume** → **volume**: Direct mapping
- **minutes** → **minutes**: Direct mapping
- **sms** → **sms**: Direct mapping
- **region** → **region**: Direct mapping
- **roaming** → **roaming**: Direct mapping
- **_ingest_timestamp**: Entity-level metadata (system-generated)
- **_source_system**: Entity-level metadata (system-generated)
- **_record_status**: Entity-level metadata (system-generated)
- **_update_timestamp**: Entity-level metadata (system-generated)
- **_batch_id**: Entity-level metadata (system-generated)
- **_created_by**: Entity-level metadata (system-generated)
- **_updated_by**: Entity-level metadata (system-generated)

## Column Descriptions
### usage_id
Unique identifier for the usage test1

### sub_id
Unique identifier for the sub

### usage_date
Date information for the record

### type
Classification or category of the record

### volume
Decimal/numeric value for volume

### minutes
Text information for minutes

### sms
Integer value for sms

### region
Text information for region

### roaming
Boolean flag for roaming

### _ingest_timestamp
Records when data was ingested into the system. Automatically populated by the data pipeline.

### _source_system
Identifies the source system that provided the data. Used for data lineage tracking.

### _record_status
Status after validation (valid/quarantined/error). Indicates data quality assessment.

### _update_timestamp
Last update time in the silver/curated layer. Tracks when the record was last modified.

### _batch_id
Associates records with a specific processing batch. Used for batch processing and error tracking.

### _created_by
Process or user that created the record. Tracks data origin and responsibility.

### _updated_by
Process or user that last updated the record. Maintains audit trail of changes.

## Data Quality Rules


## Deployment
The pipeline is deployed using:
- **Orchestration**: Apache Airflow
- **Processing**: Apache Spark
- **Storage**: AWS S3
- **Infrastructure**: Terraform

## Monitoring
- Data quality metrics are collected and monitored
- Pipeline execution logs are available in Airflow
- Error handling and alerting are configured