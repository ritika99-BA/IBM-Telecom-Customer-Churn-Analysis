/*ANALYSIS BEGINS
 Customer Demographics
1.Do senior citizens churn more?
2.Does having a partner reduce churn?
3.Gender and churn relation?
*/

SELECT * FROM customer_churn;

-- 1.Do senior citizens churn more?
 SELECT SeniorCitizen,
       count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS
 FROM customer_churn
 GROUP BY SeniorCitizen;

-- 2.Does having a partner reduce churn?
SELECT Partner,
       count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
       round((sum(Churn_value)*100)/count(*),2) AS ChurnRate
 FROM customer_churn
 GROUP BY Partner;
 
--  3.Gender and churn relation?
SELECT Partner,
       count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
       round((sum(Churn_value)*100)/count(*),2) AS ChurnRate
 FROM customer_churn
 GROUP BY Partner;
 
 SELECT * FROM customer_churn;
 
--  Category B - CustomerRelationship
   -- Which Tenure Group churns the most?
   
SELECT Tenure_Group,
	   count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
	   ROUND((SUM(Churn_Value) *100)/count(*),2 ) AS ChurnRate
FROM customer_churn 
GROUP BY Tenure_Group
ORDER BY ChurnRate;

-- Which Contract has the highest churn?
 SELECT Contract,
	   count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
	   ROUND((SUM(Churn_Value) *100)/count(*),2) AS ChurnRate
 FROM customer_churn
 GROUP BY Contract
 ORDER BY ChurnRate DESC;
 
--  Category C - Services
-- Does Online Security reduce churn?
 
SELECT Online_Security,
	   count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
	   ROUND((SUM(Churn_Value) *100)/count(*),2) AS ChurnRate
 FROM customer_churn
 GROUP BY Online_Security
 ORDER BY ChurnRate DESC;

-- Does Tech Support reduce churn?
SELECT Tech_Support,
	   count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
	   ROUND((SUM(Churn_Value) *100)/count(*),2) AS ChurnRate
 FROM customer_churn
 GROUP BY Tech_Support
 ORDER BY ChurnRate DESC;
 
 -- Which Internet Service has the highest churn?
SELECT Internet_Service,
	   count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
	   ROUND((SUM(Churn_Value) *100)/count(*),2) AS ChurnRate
 FROM customer_churn
 GROUP BY Internet_Service
 ORDER BY ChurnRate DESC;
 
-- Category D - Revenue 
-- Do customers paying higher monthly charges churn more?
SELECT 
       Monthly_Charge_Category,
	   count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
	   ROUND((SUM(Churn_Value) *100)/count(*),2) AS ChurnRate
FROM customer_churn
GROUP BY Monthly_Charge_Category;

-- Which Payment Method has the highest churn?
SELECT 
       Payment_Method,
	   count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
	   ROUND((SUM(Churn_Value) *100)/count(*),2) AS ChurnRate
FROM customer_churn
GROUP BY Payment_Method
ORDER BY ChurnRate DESC;

-- Category E - Retention
-- Does Risk Level accurately predict churn?

SELECT Risk_Level,
       count(*) AS TOTALCUSTOMERS,
       SUM(Churn_Value) AS CHURNEDCUSTOMERS,
	   ROUND((SUM(Churn_Value) *100)/count(*),2) AS ChurnRate
FROM customer_churn
GROUP BY Risk_Level;

-- Which Churn Category is most common?
SELECT Churn_Category,
       count(Churn_Category) AS Churn_category_count
FROM customer_churn
WHERE Churn_Value = 1
GROUP BY Churn_Category
ORDER BY Churn_category_count DESC;

-- Top 10 Churn Reasons
SELECT Churn_Reason,
       count(*) AS Churn_count
FROM customer_churn
WHERE Churn_Value = 1
GROUP BY Churn_Reason
ORDER BY Churn_count DESC
LIMIT 10; 