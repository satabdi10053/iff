CREATE OR REPLACE VIEW sales_performance_customer AS
SELECT
  fs.customer_id,
  fs.customer_name,
  dc.country_name AS customer_country,
  SUM(fs.amount_usd) AS total_sales_usd,
  COUNT(DISTINCT fs.transaction_id) AS transaction_count
FROM iff.silver.fact_sales fs
LEFT JOIN iff.silver.dim_customer c
  ON fs.customer_id = c.customer_id
LEFT JOIN iff.silver.dim_country dc
  ON TRIM(c.location_country) = dc.country_name
GROUP BY
  fs.customer_id,
  fs.customer_name,
  dc.country_name;
