# 🎬 Netflix Cloud-Based Analytics Project

## 📌 Overview
This is an ongoing **cloud analytics project** built on **Snowflake** with raw data sourced from **Azure Blob Storage** using **Storage Integration**.  
The pipeline is designed for:
- Ingesting Netflix datasets from Azure Blob
- Transforming with **dbt**
- Serving analytics for dashboards & reporting (Power BI)

---

## 🏗️ Architecture
```mermaid
flowchart LR
    A[Azure Blob Storage] --> B[Snowflake Stage]
    B --> C[Snowflake Raw Tables]
    C --> D[dbt Models]
    D --> E[Analytics Layer (Power BI)]
