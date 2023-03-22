![](https://github.com/biffbuster/Sushiswap-Stablecoin-Analysis/images/sushi_bg.png)

# Sushiswap: Cross-Chain Stablecoin Analysis
_________________

This is a dashboard covering stablecoin activity on Sushiswap across all chains. In this analysis we're going to be taking a look at Sushiswap top pairs and stablecoins-to-stablecoin pairs. Some fo the chains we will be looking at are:

- Ethereum
- Arbitrum
- Polygon
- Fantom
- BNB
- Optimism
- Gnosis
- Avalanche

*Again we will be using [Dune Analytics](https://dune.com/) for our SQL queries which uses [Trino](https://trino.io/docs/current/sql.html) SQL syntax.*

________________

# Analysis


Our objective is to visualize which chains have seen the most stablecoin activity pick up in the last 3 months. The default will be set to the last 6 months. To find our objective, we must answer the following questions:

- What are the most actively traded stables on Sushi on Ethereum, Optimism, Arbitrum, and others?
  
- Chart monthly volume and inflow/outflow of stablecoins through Sushi on various chains. Which chains have seen the most growth?


Below we're going to view some of the charts and tables provided by Dune Analytics. Let's break down our anlysis in 2 sections:

1. Stablecoin Pairs
2. Crosschain Stablecoin Volume

__________________



# Stablecoin Pairs

The following stablecoin pairs will be observed:

- *USDC-USDT*
- *DAI-USDT*
- *MIM-USDT*
- *TUSD-USDC*
- *BUSD-USDC*

In the full report you will be able to filter through the chain of your choice and aggregate by time interval of your choice. In this example we will be looking at the **Ethereum Blockchain** and the top stablecoin-to-stablecoin pairs on Sushiswap.


![Stablecoin-to-Stablecoin Pairs](https://github.com/biffbuster/Sushiswap-Stablecoin-Analysis/images/stablecoin_to_stablecoin_pairs.png)


Now we will look at stablecoin / WETH pairs, since they have contributed to 99% of stablecoin pair volume.


![Pair Volume Normalized](https://github.com/biffbuster/Sushiswap-Stablecoin-Analysis/images/pair_volume_normalized.png)


Based on our findings, we can assume **USDC-USDT** is the most traded stablecoin-to-stablecoin pair; in fact, for the first time in over a year, **$USDT** controlled over ***56%*** of stablecoin volume on Ethereum and over ***90%*** on Arbitrum. This was the result of the USDC insolvency rumors after the collapse of Silicon Valley bank, where the $USDC stablecoin broke peg and dropped to a low of **$0.89** on March 13th-14th.


____________________


# Crosschain Stablecoin Volume

Below we will be looking at stablecoin inflows and outflows across all chains. The chains we will be analyzing are as follows:

- Ethereum
- Arbitrum
- Gnosis
- Optimism
- BNB
- Avalanche
- Polygon
- Fantom


![Volume By Chain](https://github.com/biffbuster/Sushiswap-Stablecoin-Analysis/images/volume_by_chain.png)



![Chain Volume](https://github.com/biffbuster/Sushiswap-Stablecoin-Analysis/images/chain_volume.png)


Finally, we will highlight overall chain market share. Again, clearly Ethereum is the leading chain by volume. 


![Chain Market Share](https://github.com/biffbuster/Sushiswap-Stablecoin-Analysis/images/stablecoin_pie_chart.png)




____________________

# Conclusion

Overall we can make the conclusion that **$USDC** is the most traded stablecoin, while Ethereum has the most volume; however, Arbitrum has the most traders over the past 60 days. 

We can still see little growth across other chains, but noticable chains are Arbitrum, and Ethereum as those had the highest stablecoin trading volume by pair over the past 6 months. Activity on Gnosis and Fantom are picking up but not in the top just yet. That being said, Arbitrum has picked up the most momentum within the last 6 months. 


____________________



# Sources:

`dex.trades`


  *This is a bounty submission for [MetricsDAO](https://legacy.metricsdao.xyz/)*