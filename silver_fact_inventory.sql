CREATE OR REPLACE TABLE fact_inventory AS
SELECT
  i.ingredient_id,
  i.provider_id,
  p.provider_name,
  p.location_country AS provider_country,
  i.weight_in_grams,
  i.cost_per_gram,
  (i.weight_in_grams * i.cost_per_gram) AS stock_value_usd
FROM iff.silver.dim_ingredient i
LEFT JOIN iff.silver.dim_provider p
  ON i.provider_id = p.provider_id;
