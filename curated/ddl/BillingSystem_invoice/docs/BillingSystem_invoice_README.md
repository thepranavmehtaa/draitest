# BillingSystem_invoice Data Pipeline Documentation

## Overview
This document describes the data pipeline for the BillingSystem_invoice entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: BillingSystem_invoice
- **Curated Entity**: BillingSystem_invoice
- **Generated**: 2025-08-26T09:11:15.887Z

## Column Mappings
- **InvoiceID** → **InvoiceID**: Direct mapping
- **AccountID** → **AccountID**: Direct mapping
- **InvoiceDate** → **InvoiceDate**: Direct mapping
- **DueDate** → **DueDate**: Direct mapping
- **TotalAmount** → **TotalAmount**: Direct mapping
- **Status** → **Status**: Direct mapping
- **PaidDate** → **PaidDate**: Direct mapping

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