Bank Marketing Campaign Analysis

An end-to-end data analytics project that analyzes a Portuguese bank's direct marketing campaigns to identify the customer characteristics, financial profiles, campaign practices, and macroeconomic conditions associated with successful term deposit subscriptions.

The project demonstrates a complete analytics workflow, from raw data preparation in SQL Server to business intelligence reporting in Power BI, culminating in actionable business recommendations designed to improve future telemarketing campaign performance.

Table of Contents
Project Overview
Business Problem
Project Objective
Dataset
Tools & Technologies
Project Workflow
Data Cleaning
Exploratory Data Analysis
Power BI Dashboard
Key Findings
Business Recommendations
Repository Structure
How to Reproduce the Project
Author

Project Overview

Direct marketing remains one of the most widely used customer acquisition strategies within the banking industry. Although telemarketing campaigns allow financial institutions to reach thousands of potential customers, their effectiveness depends on accurately identifying customers with a high likelihood of subscribing while minimizing unnecessary marketing effort.

This project analyzes the Bank Marketing Dataset published by the UCI Machine Learning Repository, containing 41,188 customer contacts collected during direct marketing campaigns conducted by a Portuguese banking institution.

Using SQL Server for data cleaning and exploratory data analysis (EDA), followed by Power BI for dashboard development, the project transforms raw marketing data into business insights that support evidence-based customer targeting and campaign optimization.

The analysis follows a complete data analytics workflow including:

Data understanding
Data cleaning
Exploratory Data Analysis (EDA)
Interactive dashboard development
Executive business reporting
Actionable business recommendations
Business Problem

The bank conducted large-scale telemarketing campaigns to promote term deposit subscriptions. Despite contacting 41,188 customers, only 11.27% subscribed to the product, indicating that a substantial proportion of marketing resources was spent on customers who ultimately did not convert.

Without understanding the characteristics of successful customers and the campaign practices associated with higher subscription rates, marketing teams risk:

Increasing operational costs
Contacting low-potential customers
Reducing campaign efficiency
Missing opportunities to improve customer targeting

This project investigates historical campaign data to identify the factors most strongly associated with successful subscriptions and translate those findings into practical recommendations for future marketing campaigns.

Project Objective

The objective of this project is to identify the customer characteristics, financial profiles, campaign practices, and macroeconomic conditions most strongly associated with successful term deposit subscriptions, and translate these findings into actionable recommendations for improving telemarketing campaign effectiveness.

Specifically, the analysis aims to answer the following business questions:

Which customer segments are most likely to subscribe?
How does a customer's financial profile influence subscription behavior?
Which campaign strategies achieve the highest subscription rates?
How do macroeconomic conditions affect customer decisions?
What business actions can improve future campaign performance?
Dataset
Attribute	Description
Dataset	Bank Marketing (Additional Full Dataset)
Source	UCI Machine Learning Repository
Institution	Portuguese Banking Institution
Records	41,188 customer contacts
Target Variable	Term Deposit Subscription (yes / no)

Dataset Source

https://archive.ics.uci.edu/dataset/222/bank+marketing

The dataset contains information describing customers contacted during direct marketing campaigns, including:

Customer demographics
Financial profile
Previous campaign history
Contact information
Campaign characteristics
Macroeconomic indicators

The target variable indicates whether the customer subscribed to a term deposit after being contacted.

Tools & Technologies
Tool	Purpose
SQL Server	Data cleaning, transformation, exploratory data analysis
Power BI	Interactive dashboard development and visualization
Microsoft Word	Executive business reporting
Git & GitHub	Version control and project documentation
Project Workflow

The project follows a structured end-to-end data analytics workflow.
Raw Dataset
      │
      ▼
Data Understanding
      │
      ▼
Data Cleaning (SQL)
      │
      ▼
Exploratory Data Analysis (SQL)
      │
      ▼
Business Insights
      │
      ▼
Power BI Dashboard
      │
      ▼
Executive Summary
      │
      ▼
Business Recommendations

Each stage builds upon the previous one, ensuring that business decisions are supported by clean, reliable, and well-explored data.

Data Cleaning

Data preparation was performed entirely in SQL Server before beginning the exploratory analysis.

The objective of this phase was to improve data quality, standardize formats, and prepare the dataset for reliable analysis.

Cleaning Activities

Removed duplicate records

Standardized column names

Corrected inconsistent categorical values

Converted data types

Validated missing values

Verified target variable consistency

Created derived variables for analysis

Examples include:

Standardizing customer categories
Formatting numerical variables
Preparing age segmentation
Validating campaign variables
Ensuring consistent subscription labels

The cleaned dataset served as the foundation for all subsequent SQL analysis and Power BI visualizations.

Exploratory Data Analysis

Exploratory Data Analysis (EDA) was conducted entirely in SQL Server to identify the factors associated with successful term deposit subscriptions before developing the Power BI dashboard.

The analysis was organized into six business-oriented sections.
| Analysis Area                 | Business Objective                                                                              |
| ----------------------------- | ----------------------------------------------------------------------------------------------- |
| **Campaign Performance**      | Measure the overall effectiveness of the marketing campaign                                     |
| **Customer Segmentation**     | Identify customer groups with higher subscription rates                                         |
| **Financial Status**          | Evaluate whether customers' financial profiles influence subscriptions                          |
| **Campaign Strategy**         | Assess the effectiveness of campaign execution and communication methods                        |
| **Macroeconomic Indicators**  | Investigate whether the economic environment influences customer decisions                      |
| **Multidimensional Analysis** | Combine customer, campaign, and economic variables to uncover high-performing customer segments |

Each section addresses a specific business problem and concludes with practical insights that support marketing decision-making.

Power BI Dashboard

After completing the SQL analysis, the cleaned dataset was imported into Power BI to build an interactive dashboard that summarizes campaign performance and customer behavior.

The dashboard enables users to explore marketing performance dynamically through filters, KPIs, and visualizations.

Dashboard Pages
Executive Overview

This page provides a high-level summary of campaign performance, including:

Total customers contacted
Total subscribers
Overall subscription rate
Customer demographics
Financial profile
Campaign performance indicators
Campaign Performance Analysis

This page focuses on identifying the drivers of successful subscriptions through interactive visualizations covering:

Customer segmentation
Contact methods
Campaign timing
Previous campaign outcomes
Macroeconomic indicators
Subscription trends
Interactive Dashboard

Power BI Service
https://app.powerbi.com/links/NVe49A3P-m?ctid=b5b5d8fb-3a53-425c-924d-8eaff50e1945&pbi_source=linkShare

## Dashboard

The interactive Power BI dashboard summarizes the key findings from the analysis across two report pages.

### Dashboard Overview

![Dashboard Overview](images/dashboard_overview.png)

### Customer & Campaign Analysis

![Customer & Campaign Analysis](images/campaign_analysis.png)

**Interactive Dashboard**

View the interactive dashboard on Power BI Service:

[https://app.powerbi.com/...](https://app.powerbi.com/links/NVe49A3P-m?ctid=b5b5d8fb-3a53-425c-924d-8eaff50e1945&pbi_source=linkShare)

Key Findings

The SQL analysis identified several variables that are strongly associated with successful term deposit subscriptions.

Campaign Performance

| Finding                                                           | Business Insight                                                                                                                                   |
| ----------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Overall subscription rate was **11.27%**                          | Only around one in nine contacted customers subscribed, indicating substantial room for improving campaign efficiency.                             |
| Campaign outcomes were highly imbalanced (88.73% non-subscribers) | Successful subscriptions represent a relatively small proportion of contacted customers, highlighting the importance of better customer targeting. |

Customer Segmentation

| Variable           | Key Finding                                                                                                                                                                              |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Age**            | Customers aged **60+** recorded the highest subscription rate (**39.56%**), while customers aged **40–49** recorded the lowest (**7.92%**).                                              |
| **Occupation**     | **Students (31.43%)** and **retired customers (25.23%)** were the highest-performing occupational groups, whereas blue-collar workers recorded the lowest subscription rate (**6.89%**). |
| **Education**      | Customers with a university degree achieved the highest subscription rate (**13.72%**).                                                                                                  |
| **Marital Status** | Marital status showed relatively small differences in subscription rates and appears to be a weaker segmentation variable.                                                               |

Financial Profile

| Variable       | Key Finding                                                                                                                                                                                             |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Credit Default | Customers without recorded credit default achieved the highest subscription rate (**12.88%**), although conclusions regarding customers with default are limited because only three observations exist. |
| Housing Loan   | Housing loan status showed minimal differences across customer groups.                                                                                                                                  |
| Personal Loan  | Personal loan status contributed little to customer segmentation.                                                                                                                                       |

Overall, financial profile variables were considerably less informative than customer demographics.

Campaign Strategy
Campaign execution proved to be one of the strongest drivers of marketing success.

| Variable                   | Key Finding                                                                                                                                                                                           |
| -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Contact Method             | Cellular communication achieved a subscription rate of **14.74%**, compared with only **5.23%** for telephone contacts.                                                                               |
| Campaign Month             | March, September, October, and December achieved the highest subscription rates, whereas May generated the highest campaign volume but one of the lowest subscription rates (**6.43%**).              |
| Day of Contact             | Thursday produced the highest subscription rate (**12.12%**), although weekday differences were relatively small overall.                                                                             |
| Number of Contacts         | Subscription rates were highest during the first contact attempt and declined noticeably after the third attempt.                                                                                     |
| Previous Campaign Contacts | Previously contacted customers generally subscribed more frequently than first-time contacts.                                                                                                         |
| Previous Campaign Outcome  | Previous campaign success was the strongest predictor of future success, achieving a subscription rate of **65.11%**.                                                                                 |
| Call Duration              | Successful subscriptions were consistently associated with substantially longer conversations; however, call duration should not be used for prediction because it is only known after the call ends. |

Macroeconomic Indicators
Macroeconomic variables influenced customer behavior, although no single indicator fully explained subscription outcomes.

| Indicator                 | Observation                                                                               |
| ------------------------- | ----------------------------------------------------------------------------------------- |
| Employment Variation Rate | Higher subscription rates were generally observed during weaker labour market conditions. |
| Consumer Price Index      | No consistent linear relationship was identified.                                         |
| Consumer Confidence       | Consumer confidence alone showed limited explanatory power.                               |
| Euribor 3-Month Rate      | Lower Euribor environments were associated with higher subscription rates.                |
| Number of Employees       | Lower employment levels generally corresponded with stronger subscription performance.    |

These findings suggest that macroeconomic conditions should be interpreted collectively rather than individually when planning marketing campaigns.

Multidimensional Analysis
Combining multiple variables revealed patterns that were not visible in single-variable analysis.
The strongest customer segments included:

| Customer Segment                                                                                 | Subscription Rate |
| ------------------------------------------------------------------------------------------------ | ----------------: |
| Customers aged **60+** contacted through **cellular** after a **previous successful campaign**   |        **75.39%** |
| Customers aged **30–39** contacted through **cellular** after a **previous successful campaign** |        **63.37%** |
| Retired customers aged **60+**                                                                   |        **42.55%** |
| Students aged **17–29**                                                                          |        **33.43%** |

These results demonstrate that combining customer demographics with campaign history and communication strategy provides considerably stronger customer segmentation than analyzing variables independently.

Business Recommendations
Based on the analysis, the following recommendations can improve the effectiveness and efficiency of future telemarketing campaigns.

| Recommendation                                                  | Supporting Evidence                                                                                                                                                                        | Expected Business Impact                                                                                            |
| --------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------- |
| **Prioritize high-value customer segments**                     | Customers aged **60+** (39.56%), retired customers (42.55%), and students (33.43%) consistently achieved the highest subscription rates.                                                   | Improve targeting accuracy and increase subscription rates while reducing unnecessary marketing effort.             |
| **Make cellular the primary communication channel**             | Cellular contacts achieved a **14.74%** subscription rate compared with **5.23%** for telephone contacts.                                                                                  | Increase campaign effectiveness without increasing customer contacts.                                               |
| **Maximize the effectiveness of early customer contacts**       | Subscription rates were highest during the first contact attempt and declined noticeably after the third contact.                                                                          | Reduce campaign costs by avoiding low-value follow-up contacts.                                                     |
| **Leverage previous campaign history**                          | Customers with a previous successful campaign achieved a **65.11%** subscription rate.                                                                                                     | Improve customer selection and allocate marketing resources more efficiently.                                       |
| **Optimize campaign timing**                                    | March, September, October, and December consistently outperformed other months, while May generated high campaign volume but one of the lowest subscription rates.                         | Increase marketing efficiency by scheduling campaigns during historically stronger-performing periods.              |
| **Focus segmentation on the most influential variables**        | Age, occupation, communication channel, and previous campaign outcome showed much stronger relationships with subscription behavior than housing loans, personal loans, or marital status. | Simplify customer segmentation while improving predictive value.                                                    |
| **Incorporate macroeconomic conditions into campaign planning** | Lower Euribor rates and weaker labour market conditions were generally associated with higher subscription rates.                                                                          | Support strategic campaign planning by considering external economic conditions alongside customer characteristics. |


Repository Structure
Bank-Marketing-Campaign-Analysis/
│
├── data/
│   ├── bank-additional-full.csv
│   └── bank_marketing_clean.csv
│
├── sql/
│   ├── 01_data_cleaning.sql
│   └── 02_exploratory_data_analysis.sql
│
├── powerbi/
│   ├── Bank Marketing Dashboard.pbix
│   ├── Dashboard_Page_1.png
│   └── Dashboard_Page_2.png
│
├── reports/
│   └── Executive Summary.pdf
│
└── README.md
