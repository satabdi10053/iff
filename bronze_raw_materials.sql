CREATE TABLE raw_materials_raw (
  raw_material_id   INT,
  name              STRING,
  generation_date   STRING,
  batch_number      INT
)
USING CSV
OPTIONS (
  header = 'true',
  inferSchema = 'false'
)
LOCATION 'dbfs:/mnt/raw/raw_materials/';
