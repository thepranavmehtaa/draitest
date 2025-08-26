# Salesforce_DimOrderItem Data Pipeline Documentation

## Overview
This document describes the data pipeline for the Salesforce_DimOrderItem entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: Salesforce_DimOrderItem
- **Curated Entity**: Salesforce_DimOrderItem
- **Generated**: 2025-08-26T09:30:54.394Z

## Column Mappings
- **OrderItemID** → **OrderItemID**: Direct mapping
- **OrderID** → **OrderID**: Direct mapping
- **ProductID** → **ProductID**: Direct mapping
- **Quantity** → **Quantity**: Direct mapping
- **UnitPrice** → **UnitPrice**: Direct mapping
- **LineAmount** → **LineAmount**: Direct mapping
- **Status** → **Status**: Direct mapping

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