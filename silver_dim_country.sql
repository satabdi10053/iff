USE CATALOG iff;
USE SCHEMA silver;

WITH customer_countries AS (
  SELECT DISTINCT TRIM(location_country) AS country_name
  FROM iff.bronze.customers_raw
),
provider_countries AS (
  SELECT DISTINCT TRIM(location_country) AS country_name
  FROM iff.bronze.providers_raw
),
transaction_countries AS (
  SELECT DISTINCT TRIM(transaction_country) AS country_name
  FROM iff.bronze.sales_transactions_raw
),
all_countries AS (
  SELECT country_name FROM customer_countries
  UNION
  SELECT country_name FROM provider_countries
  UNION
  SELECT country_name FROM transaction_countries
)
CREATE OR REPLACE TABLE dim_country AS
SELECT
  MONOTONICALLY_INCREASING_ID() AS country_id,
  country_name
FROM all_countries
WHERE country_name IS NOT NULL AND country_name <> '';
