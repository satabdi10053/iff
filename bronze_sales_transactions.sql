CREATE TABLE sales_transactions_raw (
  transaction_id        STRING,
  customer_id           INT,
  flavour_id            INT,
  transaction_timestamp TIMESTAMP,
  transaction_country   STRING,
  quantity              DOUBLE,
  amount_usd            DOUBLE,
  generation_date       STRING,
  batch_number          INT
)
USING CSV
OPTIONS (
  header = 'true',
  inferSchema = 'false'
)
LOCATION 'dbfs:/mnt/raw/sales_transactions/';
