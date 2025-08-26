# Salesforce_account Data Pipeline Documentation

## Overview
This document describes the data pipeline for the Salesforce_account entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: Salesforce_account
- **Curated Entity**: Salesforce_account
- **Generated**: 2025-08-26T09:43:00.847Z

## Column Mappings
- **account_id** → **account_id**: Direct mapping
- **customer_id** → **customer_id**: Direct mapping
- **acct_type** → **acct_type**: Direct mapping
- **billing_cycle** → **billing_cycle**: Direct mapping
- **currency** → **currency**: Direct mapping
- **status** → **status**: Direct mapping
- **created_at** → **created_at**: Direct mapping

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