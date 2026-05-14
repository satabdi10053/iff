CREATE TABLE recipes_raw (
  recipe_id             STRING,
  raw_material_id       INT,
  flavour_id            INT,
  ingredient_id         INT,
  ratio_raw_material    DOUBLE,
  ratio_flavour         DOUBLE,
  ratio_ingredient      DOUBLE,
  yield_percentage      DOUBLE,
  heat_process          STRING,
  generation_date       STRING,
  batch_number          INT
)
USING CSV
OPTIONS (
  header = 'true',
  inferSchema = 'false'
)
LOCATION 'dbfs:/mnt/raw/recipes/';
