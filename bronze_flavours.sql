CREATE TABLE IF NOT EXISTS flavours_raw (
  flavour_id        INT,
  name              STRING,
  description       STRING,
  generation_date   STRING,
  batch_number      INT
)
USING CSV
OPTIONS (
  header = 'true',
  inferSchema = 'false'
)
LOCATION 'dbfs:/mnt/raw/flavours/';
