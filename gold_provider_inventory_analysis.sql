CREATE OR REPLACE VIEW provider_inventory_analysis AS
SELECT
  fi.provider_id,
  fi.provider_name,
  fi.provider_country,
  SUM(fi.weight_in_grams)      AS total_weight_in_grams,
  SUM(fi.stock_value_usd)      AS total_stock_value_usd
FROM iff.silver.fact_inventory fi
GROUP BY
  fi.provider_id,
  fi.provider_name,
  fi.provider_country;
