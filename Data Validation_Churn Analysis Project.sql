-- DATA VALIDATION

SELECT * FROM customers;
RENAME TABLE customers TO customer_churn;
SELECT * FROM customer_churn;
-- Duplicate Checking
SELECT CustomerID, 
       count(*)
FROM customer_churn
GROUP BY CustomerID
HAVING count(*)>1;

-- Missing Values Checking
SELECT 
       sum(CustomerID IS NULL)  AS Customerid,
       sum(Monthly_Charges IS NULL) AS MonthlyCharges,
	   sum(Total_Charges IS NULL) AS TotalCharges,
	   sum(Churn_Label IS NULL) AS Churnlabel
FROM customer_churn;

SELECT DISTINCT Contract
FROM customer_churn;

SELECT distinct Payment_Method
FROM customer_churn;
SELECT * FROM customer_churn;

