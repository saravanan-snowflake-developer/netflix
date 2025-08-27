# 🎬 Netflix Cloud-Based Analytics Project

## 📌 Overview
This is an ongoing **cloud analytics project** built on **Snowflake** with raw data sourced from **Azure Blob Storage** using **Storage Integration**.  
The pipeline is designed for:
- Ingesting Netflix datasets from Azure Blob
- Transforming with **dbt**
- Serving analytics for dashboards & reporting (Power BI)

---

## 🏗️ Architecture

This gives a **clear warehouse layer flow**:  
- **Stage Layer** → raw data from Blob into Snowflake stage  
- **Dim Layer** → cleaned dimensions (dim_users, dim_movies, etc.)  
- **Fact/Mart Layer** → business-ready fact tables (fact_ratings, fact_views, etc.)  
- **Analytics Layer** → BI dashboards & reporting  

👉 Do you want me to **combine both views** (detailed + layered) into the README so teammates can understand at both *component* and *data layer* levels?
