CREATE OR REPLACE TABLE fact_sales AS
SELECT
  s.transaction_id,
  s.customer_id,
  c.customer_name,
  s.flavour_id,
  f.flavour_name,
  s.transaction_timestamp,
  DATE(s.transaction_timestamp) AS transaction_date,
  s.transaction_country,
  dc.country_id,
  s.quantity,
  s.amount_usd,
  s.batch_number
FROM iff.bronze.sales_transactions_raw s
LEFT JOIN iff.silver.dim_customer c
  ON s.customer_id = c.customer_id
LEFT JOIN iff.silver.dim_flavour f
  ON s.flavour_id = f.flavour_id
LEFT JOIN iff.silver.dim_country dc
  ON TRIM(s.transaction_country) = dc.country_name;
