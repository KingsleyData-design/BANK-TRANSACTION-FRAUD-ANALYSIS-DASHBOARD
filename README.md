# BANK TRANSACTION FRAUD DETECTION

Fraud's rare, but it's not random. This one's about finding where it actually clusters — which merchants, which hours, which countries — using a dataset of 1 million bank transactions.

## Key Metrics
| Metric | Value |
|--------|-------|
| Total Transactions | 1,000,000 |
| Total Fraud Cases | 55,000 |
| Fraud Rate | 5.53% |
| Total Fraud Amount | $12.60M |
| Avg Transaction Amount | $204.72 |

## The data

1 million transactions, flagged as fraud (1) or legit (0), with details on merchant category, payment method, device type, country, and the hour the transaction happened. Same drill as the others — Excel, Power BI, SQL, Python, all four telling the same story.

This was the biggest dataset of the five, so a lot of the actual challenge was technical, not analytical: the SSMS import wizard couldn't handle a file this size, so the SQL step had to go through Python/SQLAlchemy instead. GitHub also choked on the raw Excel and Power BI file sizes, which meant finding workarounds just to get everything uploaded.

## What the data actually says

- **Only 5.53% of transactions are fraud** — 55K out of 1M. Small percentage, but 55,000 is still a lot of actual incidents, and 12.6M in total fraud value.
- **Jewelry, ATM withdrawals, and crypto exchanges are where fraud concentrates.** Those three categories are miles ahead of everything else — Electronics, Fuel, Education, Healthcare and the rest all sit at a fraction of the top three.
- **Fraud has a clear time pattern.** It's elevated for most of the day, then drops off sharply around hour 9 and stays low until it spikes back up late, around hour 20+. Fraud isn't happening randomly around the clock — it's concentrated in specific windows.
- **The USA has by far the most fraud cases**, more than double the next country (India), followed by UK, Brazil, Germany, and a long tail of others.

## So what should a bank actually do about it?

- **Put tighter monitoring on jewelry, ATM, and crypto transactions specifically.** These three categories account for a disproportionate share of fraud — flagging rules or extra verification steps targeted at just these would catch more fraud without slowing down every other transaction type.
- **Staff fraud review teams around the actual fraud clock, not a flat 24-hour schedule.** Since fraud spikes at specific hours and drops at others, review capacity should scale with that pattern instead of being spread evenly.
- **USA and India need dedicated fraud desks, not a one-size-fits-all global process.** The concentration in a couple of countries suggests region-specific fraud tactics that a generic policy won't catch.
- **Use payment method and device type as risk signals, not just categories to report on.** Since these are already broken out in the dashboard, they're a natural next layer for a fraud-scoring model — certain combinations are likely much riskier than others.

## What I built it in, and why four times

**Excel** — cleaned and explored the raw data, first pass at the KPIs.
**Power BI** — the main dashboard. Fraud vs Legitimate breakdown, merchant category, hour-of-day trend, country breakdown as charts; Payment Method and Device Type as slicers so you can filter the whole dashboard down to a specific method or device.
**SQL** — same KPIs as queries. Had to load the data via Python/SQLAlchemy since the SSMS import wizard couldn't handle a dataset this size.
**Python** — same analysis again in a notebook, pandas and matplotlib doing the work.

Same reasoning as every project in this portfolio — doing it in four tools isn't about needing four dashboards, it's proving the underlying logic holds up no matter which tool's doing the calculating.
 
## Dataset
- The original dataset contains 1 million financial transaction records. Due to GitHub file size limitations, the raw dataset is provided through the external link below:
Source: [Kaggle — Bank Transaction Fraud Dataset](https://www.kaggle.com/datasets/nafiulislam490/bank-transaction-fraud-detection-dataset)
- 1,000,000 rows
- Features include: transaction amount, country, merchant category, payment method, device type, hour of day, fraud flag, tranasaction id, transaction date, is weekend, city ETC


## Files in Repository
- `bank_fraud_analysis.sql` — SQL queries
- `bank_fraud_analysis.sql` — SQL query results / outputs
- `bank_fraud_python_analysis.ipynb` — Python notebook
- `bank_fraud_dashboard.xlsx` — Excel dashboard
- `bank_fraud_dashboard_Snapshot.png` — Excel dashboard screenshot
- `PowerBI_Dashboard_Snapshot.png` — Power BI dashboard screenshot
