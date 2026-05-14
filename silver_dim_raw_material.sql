CREATE OR REPLACE TABLE dim_raw_material AS
SELECT
  rm.raw_material_id,
  rm.name              AS raw_material_name,
  TO_DATE(rm.generation_date, 'dd/mmm/yy') AS generation_date,
  rm.batch_number
FROM iff.bronze.raw_materials_raw rm;
