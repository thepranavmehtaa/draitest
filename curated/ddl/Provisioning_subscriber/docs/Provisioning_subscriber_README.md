# Provisioning_subscriber Data Pipeline Documentation

## Overview
This document describes the data pipeline for the Provisioning_subscriber entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: Provisioning_subscriber
- **Curated Entity**: Provisioning_subscriber
- **Generated**: 2025-08-26T08:40:04.918Z

## Column Mappings
- **sub_id** → **sub_id**: Direct mapping
- **contract_ref** → **contract_ref**: Direct mapping
- **msisdn** → **msisdn**: Direct mapping
- **sim** → **sim**: Direct mapping
- **device_ref** → **device_ref**: Direct mapping
- **sub_type** → **sub_type**: Direct mapping
- **sub_status** → **sub_status**: Direct mapping
- **activated** → **activated**: Direct mapping

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