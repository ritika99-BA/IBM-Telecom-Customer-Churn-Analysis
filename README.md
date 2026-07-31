IBM Telecom Customer Churn Analysis

📌 Project Overview

Customer churn is one of the most critical challenges in the telecommunications industry, as retaining existing customers is significantly more cost-effective than acquiring new ones.
This end-to-end Data Analytics project analyzes customer churn using Microsoft Excel, MySQL, and Power BI to identify customer behavior patterns, understand the key factors influencing churn, and provide actionable business recommendations for improving customer retention.


🎯 Business Problem

The telecom company is experiencing customer churn, resulting in revenue loss and reduced customer lifetime value.

The objective of this project is to answer the following business questions:

- Which customers are most likely to churn?
- Which services contribute to higher churn?
- Does contract type influence customer retention?
- How do monthly charges affect churn?
- Which customer segments should be targeted for retention campaigns?

📂 Dataset Information

- **Dataset:** IBM Telecom Customer Churn Dataset
- **Source:** Kaggle (IBM Telco Customer Churn Dataset)
- **Records:** 7,043 Customers
- **Features:** 38 Columns


🛠 Tools & Technologies

| Tool | Purpose |
| Microsoft Excel | Data Cleaning & Exploratory Data Analysis |
| MySQL | KPI Calculation & Business Analysis |
| Power BI | Dashboard Development & Data Visualization |
| GitHub | Project Documentation & Portfolio |

📈 Project Workflow


Raw Dataset
      │
      ▼
Excel
(Data Cleaning & Exploratory Data Analysis)
      │
      ▼
MySQL
(KPI Calculation & Business Analysis)
      │
      ▼
Power BI
(Interactive Dashboard Development)
      │
      ▼
Business Insights & Recommendations

🧹 Data Preparation (Excel)

The dataset was cleaned and prepared using Microsoft Excel.

## Data Cleaning Steps

- Checked for duplicate records
- Verified data types
- Checked missing values
- Standardized categorical values
- Created Tenure Group
- Created Monthly Charge Category
- Created Churn Category

### Exploratory Data Analysis

Pivot Tables were created to analyze:

- Contract vs Churn
- Gender vs Churn
- Payment Method vs Churn
- Senior Citizen vs Churn
- Internet Service vs Churn
- Tech Support vs Churn
- Monthly Charge Category vs Churn

SQL Analysis

SQL was used to calculate KPIs and answer business questions.

## KPI Analysis

The following KPIs were calculated:

- Total Customers
- Churned Customers
- Churn Rate
- Average Monthly Charges
- Average Total Charges
- Average Churn Score
- Average Customer Lifetime Value (CLTV)

## Business Questions Answered

- Which contract type has the highest churn?
- Which tenure group experiences the highest churn?
- Which payment method has the highest churn?
- Which internet service has the highest churn?
- Does Tech Support reduce churn?
- How does Monthly Charge Category impact churn?
- Which Risk Level has the highest churn?
- What are the most common churn reasons?

 📊 Power BI Dashboard

An interactive dashboard was developed to visualize customer churn and support business decision-making.

## KPI Cards

- Total Customers
- Churned Customers
- Churn Rate
- Average Monthly Charges
- Average Total Charges
- Average Churn Score
- Average Customer Lifetime Value (CLTV)

## Dashboard Visuals

- Customer Churn by Contract Type
- Customer Churn by Tenure Group
- Customer Churn by Senior Citizen
- Customer Churn by Monthly Charge Category
- Customer Churn by Payment Method
- Customer Churn by Internet Service
- Customer Churn by Tech Support
- Customer Churn by Risk Level
- Average CLTV by Risk Level
- Top Churn Reasons


## Interactive Slicers

The dashboard allows users to filter data using:

- Gender
- Contract
- Payment Method
- Tech Support
- Risk Level

 🔍 Key Business Insights

- Customers on **Month-to-Month contracts** have the highest churn compared to One-Year and Two-Year contracts.
- Customers with **shorter tenure** are significantly more likely to leave the company.
- Customers using **Electronic Check** as their payment method show higher churn than other payment methods.
- Customers without **Tech Support** experience higher churn rates, indicating the importance of value-added services.
- Higher **Monthly Charges** are associated with increased customer churn.
- Customers classified as **Very High Risk** have the lowest average Customer Lifetime Value (CLTV).
- Service quality issues and competitor offers are among the most common reasons for customer churn.

💡 Business Recommendations

Based on the analysis, the following recommendations are suggested:

- Encourage customers to migrate from Month-to-Month contracts to long-term plans through promotional offers.
- Improve onboarding and engagement during the first year of customer tenure.
- Promote Tech Support and additional service bundles to increase customer retention.
- Launch targeted retention campaigns for High-Risk customers.
- Investigate the reasons behind higher churn among Electronic Check users.
- Address frequently reported churn reasons to improve customer satisfaction.


# 📁 Repository Structure

```
IBM-Telecom-Customer-Churn-Analysis
│
├── Dataset
│   └── telecom_customer_churn.csv
│
├── Excel
│   └── Customer_Churn_Cleaned.xlsx
│
├── SQL
│   ├── 01_Create_Database.sql
│   ├── 02_Create_Table.sql
│   ├── 03_KPI_Analysis.sql
│   └── 04_Business_Analysis.sql
│
├── Power BI
│   └── Customer_Churn_Dashboard.pbix
│
├── Dashboard Images
│   └── Dashboard.png
│
├── Documentation
│
└── README.md
```

🎯 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- Microsoft Excel
- SQL (MySQL)
- KPI Development
- Business Analysis
- Data Visualization
- Dashboard Design
- Business Storytelling
- Power BI

🚀 Future Enhancements

- Build a Machine Learning model to predict customer churn.
- Deploy the dashboard using Power BI Service.
- Automate data refresh for real-time reporting.
- Perform customer segmentation using clustering techniques.
- Integrate additional customer interaction data for deeper analysis.

---

# 👩‍💻 About This Project

This project was developed as part of my Data Analytics portfolio to demonstrate practical skills in data cleaning, SQL analysis, dashboard development, and business storytelling using industry-standard tools.

