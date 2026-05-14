CREATE OR REPLACE VIEW recipe_drilldown AS
SELECT
  frc.recipe_id,
  frc.raw_material_id,
  frc.raw_material_name,
  frc.flavour_id,
  frc.flavour_name,
  frc.ingredient_id,
  frc.ingredient_name,
  frc.ratio_raw_material,
  frc.ratio_flavour,
  frc.ratio_ingredient,
  frc.yield_percentage,
  frc.heat_process
FROM iff.silver.fact_recipe_component frc;
