# Bank-Transaction-Fraud-Analysis

## Project Overview
This project analyzes 1 million bank transactions to identify fraud patterns across multiple dimensions including geography, merchant category, payment method, device type, and time of day.

## Tools Used
- **Excel** — Data cleaning, Data exploration, Pivot Tables, Dashboard
- **Power BI** — Interactive dashboard with KPI cards
- **SQL (SSMS)** — Data querying and aggregation
- **Python** — Data analysis and visualization (Pandas, Matplotlib, Seaborn)

## Dataset
Source: [Kaggle — Bank Transaction Fraud Dataset](https://www.kaggle.com/datasets/nafiulislam490/bank-transaction-fraud-detection-dataset)
- 1,000,000 rows
- Features include: transaction amount, country, merchant category, payment method, device type, hour of day, fraud flag, tranasaction id, transaction date, is weekend, city ETC

## Key Metrics
| Metric | Value |
|--------|-------|
| Total Transactions | 1,000,000 |
| Total Fraud Cases | 55,000 |
| Fraud Rate | 5.53% |
| Total Fraud Amount | $12.60M |
| Avg Transaction Amount | $204.72 |

## Key Insights
- **USA, India and UK** are the top 3 countries with the highest fraud cases
- **Jewelry and ATM Withdrawal** are the most targeted merchant categories
- **Credit Card and Debit Card** are the most exploited payment methods
- **Mobile devices** account for the highest number of fraudulent transactions followed by desktop
- Fraud activity **spikes sharply at the end of the day** based on hour of day analysis


## Files in Repository
- `bank_fraud_analysis.sql` — SQL queries
- `bank_fraud_analysis.sql` — SQL query results / outputs
- `bank_fraud_python_analysis.ipynb` — Python notebook
- `bank_fraud_dashboard.xlsx` — Excel dashboard
- `bank_fraud_dashboard_Snapshot.png` — Excel dashboard screenshot
- `PowerBI_Dashboard_Snapshot.png` — Power BI dashboard screenshot
