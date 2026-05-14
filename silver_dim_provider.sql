CREATE OR REPLACE TABLE dim_provider AS
SELECT
  p.provider_id,
  TRIM(p.name)         AS provider_name,
  TRIM(p.location_city)    AS location_city,
  TRIM(p.location_country) AS location_country,
  TO_DATE(p.generation_date, 'd/M/yy') AS generation_date,
  p.batch_number
FROM iff.bronze.providers_raw p;
