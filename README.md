# IFF  – Data Engineer Hiring Task (Databricks Medallion)

This repository implements a **Bronze–Silver–Gold** medallion architecture in **Databricks SQL** for the IFF hiring task.

It is designed to:

- Ingest the provided CSV files into **Bronze** (raw)
- Clean, conform, and model **dimensions and facts** in **Silver**
- Expose **dashboard-ready marts** in **Gold** 
---

## 1. Architecture overview

### Catalogs and schemas

- Catalog: iff
- Schemas:
  - `iff.bronze` – raw ingested CSVs
  - `iff.silver` – cleaned
  - `iff.gold` – dashboard views

###  model

- **Bronze**
  - customers_raw
  - providers_raw
  - ingredients_raw
  - raw_materials_raw
  - flavours_raw
  - recipes_raw
  - sales_transactions_raw

- **Silver**
  dim_customer
  dim _provider
  dim_raw_material
  dim_ingredient
  fact_inventory
  fact_recipe_component
  fact_sales

- **Gold**
  provider_inventory_analysis
  recipe_drilldown  
  sales_performance_customer
  
---

## 2. How to run this in Databricks

### 2.1. Upload data

1. Upload the CSV files to DBFS or a mounted location, for example:

   - dbfs:/mnt/raw/customers/
   - dbfs:/mnt/raw/providers/
   - dbfs:/mnt/raw/ingredients/
   - dbfs:/mnt/raw/raw_materials/
   - dbfs:/mnt/raw/flavours/
   - dbfs:/mnt/raw/recipes/
   - dbfs:/mnt/raw/sales_transactions/

2. Adjust the `LOCATION` paths in the **Bronze** SQL files if needed.

### 2.2. Execute SQL files (recommended order)

In a Databricks SQL warehouse or notebook:

1. Run `bronze_init.sql`
2. Run all **Bronze** scripts:
  
3. Run all **Silver** scripts:
   
4. Run all **Gold** scripts:

**Data Quality:**

Null check in fact_sales:

**Handling Test failure:**

Investigate upstream:

If IDs are missing in Bronze, check raw files and ingestion logic.

Quarantine / exclude bad records:

Create a separate “rejects” table
 

