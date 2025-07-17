# raw.AnalyticsEngine_customer_kpi Data Pipeline Documentation

## Overview
This document describes the data pipeline for the raw.AnalyticsEngine_customer_kpi entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: raw.AnalyticsEngine_customer_kpi
- **Curated Entity**: curated.AnalyticsEngine_customer_kpi
- **Generated**: 2025-07-17T09:43:16.591Z

## Column Mappings
- **cust_id** → **cust_id**: Direct mapping
- **arpu** → **arpu**: Direct mapping
- **ltv** → **ltv**: Direct mapping
- **churn_score** → **churn_score**: Direct mapping
- **nps** → **nps**: Direct mapping
- **tenure** → **tenure**: Direct mapping
- **last_updated** → **last_updated**: Direct mapping
- **_ingest_timestamp**: Entity-level metadata (system-generated)
- **_source_system**: Entity-level metadata (system-generated)
- **_record_status**: Entity-level metadata (system-generated)
- **_update_timestamp**: Entity-level metadata (system-generated)
- **_batch_id**: Entity-level metadata (system-generated)
- **_created_by**: Entity-level metadata (system-generated)
- **_updated_by**: Entity-level metadata (system-generated)
- **test 1**: New column (no source mapping)

## Column Descriptions
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