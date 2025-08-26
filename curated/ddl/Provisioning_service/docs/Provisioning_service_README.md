# Provisioning_service Data Pipeline Documentation

## Overview
This document describes the data pipeline for the Provisioning_service entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: Provisioning_service
- **Curated Entity**: Provisioning_service
- **Generated**: 2025-08-26T13:04:20.093Z

## Column Mappings
- **svc_id** → **svc_id**: Direct mapping
- **sub_ref** → **sub_ref**: Direct mapping
- **svc_type** → **svc_type**: Direct mapping
- **svc_status** → **svc_status**: Direct mapping
- **start** → **start**: Direct mapping
- **end** → **end**: Direct mapping
- **qos** → **qos**: Direct mapping

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