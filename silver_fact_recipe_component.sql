CREATE OR REPLACE TABLE fact_recipe_component AS
SELECT
  r.recipe_id,
  r.raw_material_id,
  rm.raw_material_name,
  r.flavour_id,
  f.flavour_name,
  r.ingredient_id,
  ing.ingredient_name,
  r.ratio_raw_material,
  r.ratio_flavour,
  r.ratio_ingredient,
  r.yield_percentage,
  r.heat_process,
  TO_DATE(r.generation_date, 'dd/MM/yyyy') AS generation_date,
  r.batch_number
FROM iff.bronze.recipes_raw r
LEFT JOIN iff.silver.dim_raw_material rm
  ON r.raw_material_id = rm.raw_material_id
LEFT JOIN iff.silver.dim_flavour f
  ON r.flavour_id = f.flavour_id
LEFT JOIN iff.silver.dim_ingredient ing
  ON r.ingredient_id = ing.ingredient_id;
