CREATE OR REPLACE TABLE dim_customer AS
SELECT
  c.customer_id,
  c.name AS customer_name,
  c.location_city,
  c.location_country,
  TO_DATE(c.generation_date, 'dd/MM/yyyy') AS generation_date,
  c.batch_number
FROM iff.bronze.customers_raw c;
