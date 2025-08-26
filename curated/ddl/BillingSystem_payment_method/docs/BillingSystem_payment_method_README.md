# BillingSystem_payment_method Data Pipeline Documentation

## Overview
This document describes the data pipeline for the BillingSystem_payment_method entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: BillingSystem_payment_method
- **Curated Entity**: BillingSystem_payment_method
- **Generated**: 2025-08-26T09:18:51.820Z

## Column Mappings
- **PaymentMethodID** → **PaymentMethodID**: Direct mapping
- **AccountID** → **AccountID**: Direct mapping
- **PaymentType** → **PaymentType**: Direct mapping
- **CardType** → **CardType**: Direct mapping
- **MaskedCardNumber** → **MaskedCardNumber**: Direct mapping
- **ExpiryDate** → **ExpiryDate**: Direct mapping
- **Preferred** → **Preferred**: Direct mapping

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