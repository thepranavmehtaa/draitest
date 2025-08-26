# Salesforce_address Data Pipeline Documentation

## Overview
This document describes the data pipeline for the Salesforce_address entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: Salesforce_address
- **Curated Entity**: Salesforce_address
- **Generated**: 2025-08-26T09:43:00.843Z

## Column Mappings
- **AddressID** → **AddressID**: Direct mapping
- **CustomerID** → **CustomerID**: Direct mapping
- **Street** → **Street**: Direct mapping
- **City** → **City**: Direct mapping
- **State** → **State**: Direct mapping
- **Postcode** → **Postcode**: Direct mapping
- **Country** → **Country**: Direct mapping
- **AddressType** → **AddressType**: Direct mapping

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