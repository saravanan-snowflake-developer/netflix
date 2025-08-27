# 🎬 Netflix Cloud-Based Analytics Project

## 📌 Overview
This is an ongoing **cloud analytics project** built on **Snowflake** with raw data sourced from **Azure Blob Storage** using **Storage Integration**.  
The pipeline is designed for:
- Ingesting Netflix datasets from Azure Blob
- Transforming with **dbt**
- Serving analytics for dashboards & reporting (Power BI)

---

 
## 🏗️ Architecture (Layered View)
```mermaid
flowchart TD
    A[Azure Blob Storage] --> B[Stage Layer - Raw Ingestion]
    B --> C[Staging Tables]
    C --> D[Dim Layer - Dimensions]
    D --> E[Fact / Mart Layer]
    E --> F[Analytics Layer - Power BI / Dashboards]
