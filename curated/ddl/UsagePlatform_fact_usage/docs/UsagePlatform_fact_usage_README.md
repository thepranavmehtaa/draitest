# UsagePlatform_fact_usage Data Pipeline Documentation

## Overview
This document describes the data pipeline for the UsagePlatform_fact_usage entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: UsagePlatform_fact_usage
- **Curated Entity**: UsagePlatform_fact_usage
- **Generated**: 2025-08-26T11:42:05.090Z

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

## Column Descriptions


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