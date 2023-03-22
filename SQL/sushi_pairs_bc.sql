SELECT
  token_pair,
  blockchain,
  COUNT(CAST(amount_usd AS DOUBLE)) AS no_of_transactions,
  COUNT(DISTINCT taker) AS unique_users,
  SUM(CAST(amount_usd AS DOUBLE)) AS volume,
  COUNT(CAST(amount_usd AS DOUBLE)) / COUNT(DISTINCT taker) AS tx_per_user,
  SUM(CAST(amount_usd AS DOUBLE)) / COUNT(DISTINCT taker) AS avg_volume_per_user
FROM
  dex.trades
WHERE
--   blockchain = '{{Blockchain}}'
  project IN ('sushiswap')
  AND amount_usd > 0
GROUP BY
  1,
  2
ORDER BY 5 DESC NULLS FIRST