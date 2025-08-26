# Salesforce_customer_party Data Pipeline Documentation

## Overview
This document describes the data pipeline for the Salesforce_customer_party entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: Salesforce_customer_party
- **Curated Entity**: Salesforce_customer_party
- **Generated**: 2025-08-26T11:42:05.306Z

## Column Mappings
- **customer_id** → **customer_id**: Direct mapping
- **full_name** → **full_name**: Direct mapping
- **dob** → **dob**: Direct mapping
- **gender** → **gender**: Direct mapping
- **kyc_status** → **kyc_status**: Direct mapping
- **segment** → **segment**: Direct mapping
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