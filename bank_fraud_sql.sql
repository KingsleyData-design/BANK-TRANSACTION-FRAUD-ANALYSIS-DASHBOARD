USE bank_fraud_db

SELECT 
    COUNT(*) AS Total_Transactions,
    SUM(is_fraud) AS Total_Fraud_Cases,
    CAST(SUM(is_fraud) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS Fraud_Rate_Percentage,
    ROUND(SUM(transaction_amount), 2) AS Total_Transaction_Amount,
    ROUND(SUM(CASE WHEN is_fraud = 1 THEN transaction_amount ELSE 0 END), 2) AS Total_Fraud_Amount,
    ROUND(AVG(transaction_amount), 2) AS Avg_Transaction_Amount
FROM bank_fraud_cleaned
SELECT 
    CASE WHEN is_fraud = 1 THEN 'Fraud' ELSE 'Legitimate' END AS Transaction_Type,
    COUNT(*) AS Total_Transactions
FROM bank_fraud_cleaned
GROUP BY is_fraud
ORDER BY is_fraud ASC
SELECT 
    country,
    COUNT(*) AS Total_Fraud_Cases
FROM bank_fraud_cleaned
WHERE is_fraud = 1
GROUP BY country
ORDER BY Total_Fraud_Cases DESC
SELECT 
    merchant_category,
    COUNT(*) AS Total_Fraud_Cases
FROM bank_fraud_cleaned
WHERE is_fraud = 1
GROUP BY merchant_category
ORDER BY Total_Fraud_Cases DESC
SELECT 
    payment_method,
    COUNT(*) AS Total_Fraud_Cases
FROM bank_fraud_cleaned
WHERE is_fraud = 1
GROUP BY payment_method
ORDER BY Total_Fraud_Cases DESC
SELECT 
    hour_of_day,
    COUNT(*) AS Total_Fraud_Cases
FROM bank_fraud_cleaned
WHERE is_fraud = 1
GROUP BY hour_of_day
ORDER BY hour_of_day ASC
SELECT 
    device_type,
    COUNT(*) AS Total_Fraud_Cases
FROM bank_fraud_cleaned
WHERE is_fraud = 1
GROUP BY device_type
ORDER BY Total_Fraud_Cases DESC