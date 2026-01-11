CREATE DATABASE customer_db;

USE customer_db;

CREATE TABLE customers (
    CustomerID INT,
    Gender VARCHAR(10),
    Age INT,
    Annual_Income INT,
    Spending_Score INT
);

SELECT 
    COUNT(*) AS total_customers
FROM customers;

SELECT 
    Gender,
    COUNT(*) AS customer_count
FROM customers
GROUP BY Gender;

SELECT 
    Age,
    COUNT(*) AS customer_count
FROM customers
GROUP BY Age
ORDER BY Age;

SELECT 
    ROUND(AVG(Age), 2) AS average_age
FROM customers;

SELECT 
    ROUND(AVG(Annual_Income), 2) AS average_annual_income
FROM customers;

SELECT 
    ROUND(AVG(Spending_Score), 2) AS average_spending_score
FROM customers;

SELECT 
    Gender,
    ROUND(AVG(Spending_Score), 2) AS avg_spending
FROM customers
GROUP BY Gender;

SELECT 
    CustomerID,
    Gender,
    Age,
    Annual_Income,
    Spending_Score
FROM customers
WHERE Spending_Score > 70;

SELECT 
    CustomerID,
    Gender,
    Age,
    Annual_Income
FROM customers
WHERE Annual_Income > 80;

SELECT 
    Annual_Income,
    AVG(Spending_Score) AS avg_spending
FROM customers
GROUP BY Annual_Income
ORDER BY Annual_Income;

SELECT 
    CustomerID,
    Gender,
    Age,
    Annual_Income,
    Spending_Score,
    CASE
        WHEN Spending_Score >= 70 THEN 'High Spender'
        WHEN Spending_Score BETWEEN 40 AND 69 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS customer_segment
FROM customers;

SELECT 
    CASE
        WHEN Spending_Score >= 70 THEN 'High Spender'
        WHEN Spending_Score BETWEEN 40 AND 69 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS customer_segment,
    COUNT(*) AS customer_count
FROM customers
GROUP BY customer_segment;
















