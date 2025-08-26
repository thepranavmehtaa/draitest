# Salesforce_DimOrder Data Pipeline Documentation

## Overview
This document describes the data pipeline for the Salesforce_DimOrder entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: Salesforce_DimOrder
- **Curated Entity**: Salesforce_DimOrder
- **Generated**: 2025-08-26T11:37:31.816Z

## Column Mappings
- **order_id** → **order_id**: Direct mapping
- **customer_id** → **customer_id**: Direct mapping
- **order_date** → **order_date**: Direct mapping
- **order_status** → **order_status**: Direct mapping
- **order_type** → **order_type**: Direct mapping
- **channel** → **channel**: Direct mapping
- **amount** → **amount**: Direct mapping
- **last_updated** → **last_updated**: Direct mapping

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