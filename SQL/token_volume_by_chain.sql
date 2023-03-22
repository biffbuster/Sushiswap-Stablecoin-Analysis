WITH stablecoins AS (
        SELECT 
            block_date,
            project,
            blockchain,
            taker,
            amount_usd,
            token_bought_symbol as symbol
        FROM dex.trades
        UNION ALL
        SELECT
            block_date,
            project,
            blockchain,
            taker,
            amount_usd,
            token_sold_symbol as symbol
        FROM dex.trades
        WHERE project = 'sushiswap'
        )
        
SELECT
    date_trunc('day', block_date) as day,
    symbol,
    blockchain,
    COUNT(taker) as users,
    SUM(amount_usd) AS volume
FROM stablecoins s
WHERE symbol IN (
-- WHERE symbol = '{{Token}}'
            'USDC', 
            'USDT', 
            'DAI', 
            'FRAX', 
            'TUSD',
            'MIM',
            'sUSD'
            )
    AND project = 'sushiswap'
    AND blockchain = '{{Chain}}'
            
AND block_date > NOW() - INTERVAL '{{interval}}' month
GROUP BY 1,2,3
ORDER BY 1 DESC