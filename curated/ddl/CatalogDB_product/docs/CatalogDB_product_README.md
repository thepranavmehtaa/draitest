# CatalogDB_product Data Pipeline Documentation

## Overview
This document describes the data pipeline for the CatalogDB_product entity, including transformations, data quality rules, and deployment information.

## Entity Information
- **Raw Entity**: CatalogDB_product
- **Curated Entity**: CatalogDB_product
- **Generated**: 2025-08-26T08:43:06.079Z

## Column Mappings
- **prod_id** → **prod_id**: Direct mapping
- **svc_id** → **svc_id**: Direct mapping
- **prod_name** → **prod_name**: Direct mapping
- **prod_type** → **prod_type**: Direct mapping
- **bundle** → **bundle**: Direct mapping
- **plan** → **plan**: Direct mapping
- **discount** → **discount**: Direct mapping

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