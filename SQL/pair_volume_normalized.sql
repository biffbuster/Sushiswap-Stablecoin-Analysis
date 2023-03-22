SELECT
  DATE_TRUNC('day', block_time) AS date,
  token_pair,
  blockchain,
  project,
  COUNT(CAST(amount_usd AS DOUBLE)) AS no_of_transactions,
  COUNT(DISTINCT taker) AS unique_users,
  SUM(CAST(amount_usd AS DOUBLE)) AS volume,
  COUNT(CAST(amount_usd AS DOUBLE)) / COUNT(DISTINCT taker) AS tx_per_user,
  SUM(CAST(amount_usd AS DOUBLE)) / COUNT(DISTINCT taker) AS avg_volume_per_user
FROM
  dex.trades
WHERE
  blockchain = '{{Blockchain}}'
  AND project IN ('sushiswap')
  AND block_time > now() - interval '{{months}}' month
  AND token_pair IN (
    'DAI-USDT',
    'USDT-DAI',
    'USDC-USDT',
    'USDT-USDC',
    -- 'DAI-USDC',
    'USDC-DAI',
    'MIM-USDC',
    'USDC-MIM',
    'USDC-TUSD',
    'TUSD-USDC',
    'MIM-USDT',
    'USDT-MIM',
    'DAI-MIM',
    'MIM-DAI'
    -- 'USDC-BUSD',
    -- 'BUSD-USDC',
    -- 'BUSD-USDT',
    -- 'USDT-BUSD',
    -- 'DAI-BUSD',
    -- 'BUSD-DAI'
    )
GROUP BY
  1,
  2,
  3,
  4
ORDER BY
  1 DESC NULLS FIRST