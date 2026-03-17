# Cloud Billing Analytics Engineering Project

## Overview
This project demonstrates an end-to-end analytics engineering workflow using dbt and BigQuery. It models cloud billing data into a clean, scalable star schema to support cost analysis and reporting.

## Architecture
The project follows a layered dbt structure:

- **Staging**: Cleans and standardises raw source data
- **Intermediate**: Enriches billing data with service, discount, and team hierarchy information
- **Marts**: Builds analytics-ready fact and dimension tables

## Data Model

### Fact Table
- `fct_cloud_billing`
- Grain: 1 row per account_id, service, item_description, billing_date
- Metrics: usage_hours, cost_total

### Dimension Tables
- `dim_service`
- `dim_team_hierarchy`

## Technologies Used
- dbt (data transformation)
- BigQuery (data warehouse)
- SQL

## Key Features
- Modular data modelling using dbt
- Layered architecture (staging → intermediate → marts)
- Data quality tests (not_null, unique)
- Clean joins with correct grain handling

## How to Run
```bash
dbt build
```

## Future Improvements
- Add shared cost allocation model
- Implement partitioning and clustering
- Add Power BI dashboard
- Introduce dbt exposures
