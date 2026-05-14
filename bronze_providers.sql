CREATE TABLE providers_raw (
  provider_id       INT,
  name              STRING,
  location_city     STRING,
  location_country  STRING,
  generation_date   STRING,
  batch_number      INT
)
USING CSV
OPTIONS (
  header = 'true',
  inferSchema = 'false'
)
LOCATION 'dbfs:/mnt/raw/providers/';
