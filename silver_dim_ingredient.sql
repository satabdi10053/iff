CREATE OR REPLACE TABLE dim_ingredient AS
SELECT
  i.ingredient_id,
  i.name                  AS ingredient_name,
  i.chemical_formula,
  i.weight_in_grams,
  i.cost_per_gram,
  i.provider_id,
  TO_DATE(i.generation_date, 'd-MMM-yy') AS generation_date,
  i.batch_number
FROM iff.bronze.ingredients_raw i;
