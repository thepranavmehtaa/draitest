# BillingSystem_DimOrder Data Pipeline Documentation

## Overview
This document describes the data pipeline for the BillingSystem_DimOrder entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: BillingSystem_DimOrder
- **Curated Entity**: BillingSystem_DimOrder
- **Generated**: 2025-08-26T11:31:20.312Z

## Column Mappings
- **id** → **id**: Direct mapping
- **custom** → **custom**: Direct mapping
- **date** → **date**: Direct mapping
- **status** → **status**: Direct mapping
- **type** → **type**: Direct mapping
- **origin** → **origin**: Direct mapping
- **value** → **value**: Direct mapping
- **updated** → **updated**: Direct mapping

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