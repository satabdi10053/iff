CREATE TABLE ingredients_raw (
  ingredient_id     INT,
  name              STRING,
  chemical_formula  STRING,
  weight_in_grams   DOUBLE,
  cost_per_gram     DOUBLE,
  provider_id       INT,
  generation_date   STRING,
  batch_number      INT
)
USING CSV
OPTIONS (
  header = 'true',
  inferSchema = 'false'
)
LOCATION 'dbfs:/mnt/raw/ingredients/';
