-- KPI Identification
-- (Total Customers
-- Total Churned customers
-- Average Churn Score
-- Churn Rate
-- Average Monthly Charges
-- Average CLTV
-- ) 

-- 1. Total Customers
SELECT Count(CustomerID) AS Total_Customers
FROM customer_churn;

-- 2. Total Churned customers
SELECT count(*) AS Total_Churned_customers,
	    Churn_Label
FROM customer_churn
WHERE Churn_Label = "Yes";

-- 3. Average Churn Score
 SELECT avg(Churn_Score) AS Avg_Churnscore
 FROM customer_churn;

-- 4. Churn Rate
 SELECT count(*) AS TotalCustomers,
		sum(Churn_value) AS Churnedcustomers,
        round((sum(Churn_value)*100)/count(*),2) AS ChurnRate
 FROM customer_churn;
 
 -- 5. Average Monthly Charges
 SELECT ROUND(avg(Monthly_Charges),2) AS AverageMonthlyCharges
 FROM customer_churn;
 
  -- 6. Average Total Charges
  SELECT ROUND(avg(Total_Charges),2) AS AverageTotalCharges
 FROM customer_churn;
 
 -- 7. Average CLTV
  SELECT ROUND(avg(CLTV),2) AS CLTV
 FROM customer_churn;
 