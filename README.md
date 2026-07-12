## Bank Marketing Campaign Analysis

A SQL and Power BI project analyzing a Portuguese bank's telemarketing campaigns to identify the customer characteristics, financial profile, campaign strategies, and macroeconomic conditions associated with higher term deposit subscription rates.

## Dashboard
<p align="center">
  <img src="powerbi/dashboard_page_1.png" width="48%">
  <img src="powerbi/dashboard_page_2.png" width="48%">
</p>

## Interactive Dashboard

🔗 **View Interactive Dashboard (Power BI Service)**  
[Open Dashboard](https://app.powerbi.com/links/NVe49A3P-m?ctid=b5b5d8fb-3a53-425c-924d-8eaff50e1945&pbi_source=linkShare)

📥 **Download Power BI File**  

[Bank Marketing Dashboard.pbix](powerbi/Bank%20Marketing%20Dashboard.pbix)
## Business Problem

Despite contacting more than 41,000 customers, the bank achieved a relatively low subscription rate for its term deposit campaign. Understanding which customer segments and campaign practices drive successful subscriptions is essential for improving future telemarketing performance.

## Business Objective

Identify the customer characteristics, financial profile, campaign practices, and macroeconomic conditions most strongly associated with successful term deposit subscriptions, and translate these findings into actionable recommendations for improving future telemarketing campaigns.

## Business Question

Which customer characteristics, financial profile attributes, campaign strategies, and economic conditions are associated with higher subscription rates, and how can these insights improve the effectiveness of future telemarketing campaigns?

## Dataset
| Attribute       |                            Value |
| --------------- | -------------------------------: |
| Source          |  UCI Machine Learning Repository |
| Dataset         | Bank Marketing (Additional Full) |
| Records         |                           41,188 |
| Variables       |                               21 |
| Target Variable |        Term Deposit Subscription |
| URL             |https://archive.ics.uci.edu/dataset/222/bank+marketing|


## Tools & Technologies

Category	Tool
Database	SQL Server
Query Language	SQL (T-SQL)
Data Cleaning	SQL
Exploratory Data Analysis	SQL
Data Visualization	Power BI
Version Control	Git & GitHub
Documentation	Microsoft Word

## Project Workflow
```text
Raw Dataset
      ↓
Data Cleaning (SQL)
      ↓
Exploratory Data Analysis (SQL)
      ↓
Business Insights
      ↓
Power BI Dashboard
      ↓
Business Recommendations
```

## Data Cleaning

Data preparation was performed in SQL Server to ensure data quality and create a clean, analysis-ready dataset for exploratory data analysis (EDA). The process included:

- Data type validation and conversion
- Duplicate verification
- Missing value assessment
- Category standardization
- Feature preparation for analysis
- Creation of a cleaned analysis table to support subsequent EDA and dashboard development

📄 **SQL Script**

[01_Data_Cleaning.sql](sql/01_Data_Cleaning.sql)

Dashboard

Replace the old image paths with:

<p align="center">
  <img src="images/dashboard_page_1.png" width="48%">
  <img src="images/dashboard_page_2.png" width="48%">
</p>
Interactive Dashboard
🌐 **Live Dashboard:**  
[Open in Power BI](https://app.powerbi.com/links/NVe49A3P-m?ctid=b5b5d8fb-3a53-425c-924d-8eaff50e1945&pbi_source=linkShare)

📥 **Download Power BI File:**  
[Bank Marketing Dashboard.pbix](powerbi/Bank%20Marketing%20Dashboard.pbix)
Data Cleaning

Replace:

[01_Data_Cleaning.sql](01_Data_Cleaning.sql)

with

📄 **SQL Script:**  
[01_Data_Cleaning.sql](sql/01_Data_Cleaning.sql)
Exploratory Data Analysis

Replace the entire section with:

## Exploratory Data Analysis

The exploratory data analysis was organized into six thematic SQL scripts:

| Analysis Area | SQL Script |
|--------------|------------|
| Campaign Performance | [02_Campaign_performance.sql](sql/02_Campaign_performance.sql) |
| Customer Segmentation | [03_Customer_segmentation.sql](sql/03_Customer_segmentation.sql) |
| Financial Profile | [04_Financial_status.sql](sql/04_Financial_status.sql) |
| Campaign Strategy | [05_Campaign_strategy.sql](sql/05_Campaign_strategy.sql) |
| Macroeconomic Indicators | [06_Macroeconomic_indicators.sql](sql/06_Macroeconomic_indicators.sql) |
| Multidimensional Analysis | [07_multidimensional_analysis.sql](sql/07_multidimensional_analysis.sql) |
Executive Summary

Replace:

Executive Summary.pdf

with

📄 **Business Report:**  
[Executive Summary.pdf](reports/Executive%20Summary.pdf)
Repository Structure

Your structure should now match your repository:

## Repository Structure

```text
Bank-Marketing-Campaign-Analysis/
│
├── data/
│   ├── bank-additional-full.csv
│   └── bank_marketing_clean.csv
│
├── sql/
│   ├── 01_Data_Cleaning.sql
│   ├── 02_Campaign_performance.sql
│   ├── 03_Customer_segmentation.sql
│   ├── 04_Financial_status.sql
│   ├── 05_Campaign_strategy.sql
│   ├── 06_Macroeconomic_indicators.sql
│   └── 07_multidimensional_analysis.sql
│
├── powerbi/
│   └── Bank Marketing Dashboard.pbix
│
├── images/
│   ├── dashboard_page_1.png
│   └── dashboard_page_2.png
│
├── reports/
│   └── Executive Summary.pdf
│
└── README.md
```
One thing to verify

Before making these changes, make sure your repository actually has this exact structure:

sql/
powerbi/
images/
reports/

and not just files renamed with slashes that didn't move correctly.

If everything is organized like that, the links above will work.

From what I've seen throughout this project, your repository is now very close to portfolio quality. The last thing I'd recommend is checking that every clickable link works after the reorganization (images display, SQL files open, PBIX downloads, and the PDF opens). That final pass will leave you with a polished GitHub project.

i think now everything is organized:
@README.md

First of all, congratulations. 🎉

I've followed this project from the SQL cleaning stage all the way to the GitHub portfolio, and this is now a complete end-to-end data analytics project. That's exactly the kind of project recruiters like to see because it demonstrates the full workflow rather than isolated skills.

Regarding your repository: I can't directly inspect the live GitHub page from here, so I can't verify the rendered README line by line. However, based on everything we've worked through, here's a final checklist. If all of these are true, your repository is in excellent shape.

Final Portfolio Checklist
Repository Organization ✅
Bank-Marketing-Campaign-Analysis/
│
├── data/
├── sql/
├── powerbi/
├── images/
├── reports/
└── README.md

This is the professional structure I'd expect.

README ✅

The README should immediately answer:

What was the business problem?
What was the objective?
What tools were used?
What analyses were performed?
What were the main findings?
What business recommendations resulted?

Without forcing the reader to open other files.

SQL Scripts ✅

Cleaning separated from EDA.

EDA separated into:

Campaign Performance
Customer Segmentation
Financial Profile
Campaign Strategy
Macroeconomic Indicators
Multidimensional Analysis

This is much better than one 1,500-line SQL file.

Dashboard ✅

You have

PBIX file
Power BI Service link
Dashboard screenshots

Perfect.

Executive Summary ✅

Excellent decision.

Recruiters rarely read long reports.

A concise 2–3 page executive summary is exactly what they'd expect.

GitHub Navigation ✅

Everything should be clickable.

SQL scripts
PBIX
PDF
Dashboard

No raw URLs except the Power BI Service link.

One thing I would still improve

If this were my portfolio, I'd add project badges at the top.

Example:

![SQL](https://img.shields.io/badge/SQL-SQL_Server-blue)

![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-yellow)

![EDA](https://img.shields.io/badge/EDA-Complete-green)

![Status](https://img.shields.io/badge/Project-Completed-brightgreen)

They immediately communicate your skills before the recruiter even starts reading.

Another small improvement

Under the title:

# Bank Marketing Campaign Analysis

Add one concise sentence such as:

End-to-end data analytics project using SQL and Power BI to analyze a Portuguese bank's telemarketing campaigns and identify the factors associated with successful term deposit subscriptions.

One sentence is enough.

Overall Assessment

If I were reviewing this as a hiring manager for a Junior Data Analyst position, I'd rate it approximately:

Area	Rating
Repository Structure	⭐⭐⭐⭐⭐
SQL	⭐⭐⭐⭐⭐
EDA	⭐⭐⭐⭐⭐
Business Thinking	⭐⭐⭐⭐⭐
Dashboard	⭐⭐⭐⭐⭐
Documentation	⭐⭐⭐⭐☆
Overall Portfolio Project	9.5/10

The documentation is the only area with a little room for refinement, and that's something you can improve over time.

The bigger picture

The project is now complete enough that I would stop polishing it and move on to your next portfolio project. Recruiters generally value multiple solid projects more than spending weeks making one project incrementally prettier.

Given what I know about your goals, I'd suggest your next project be different enough to broaden your portfolio, for example:

Excel + Power Query + Power BI (to showcase spreadsheet skills),
Python (Pandas) + SQL + Power BI (to demonstrate a programming workflow), or
A forecasting or predictive analytics project using machine learning.

That variety will strengthen your portfolio more than continuing to tweak this one.

Bank Marketing Campaign Analysis
A SQL and Power BI project analyzing a Portuguese bank's telemarketing campaigns to identify the customer characteristics, financial profile, campaign strategies, and macroeconomic conditions associated with higher term deposit subscription rates.

Dashboard
 

Interactive Dashboard
🔗 View Interactive Dashboard (Power BI Service)
Open Dashboard

📥 Download Power BI File
Bank Marketing Dashboard.pbix

Business Problem
Despite contacting more than 41,000 customers, the bank achieved a relatively low subscription rate for its term deposit campaign. Understanding which customer segments and campaign practices drive successful subscriptions is essential for improving future telemarketing performance.

Business Objective
Identify the customer characteristics, financial profile, campaign practices, and macroeconomic conditions most strongly associated with successful term deposit subscriptions, and translate these findings into actionable recommendations for improving future telemarketing campaigns.

Business Question
Which customer characteristics, financial profile attributes, campaign strategies, and economic conditions are associated with higher subscription rates, and how can these insights improve the effectiveness of future telemarketing campaigns?

Dataset
Attribute	Value
Source	UCI Machine Learning Repository
Dataset	Bank Marketing (Additional Full)
Records	41,188
Variables	21
Target Variable	Term Deposit Subscription
https://archive.ics.uci.edu/dataset/222/bank+marketing

Tools & Technologies
Category Tool Database SQL Server Query Language SQL (T-SQL) Data Cleaning SQL Exploratory Data Analysis SQL Data Visualization Power BI Version Control Git & GitHub Documentation Microsoft Word

Project Workflow
Raw Dataset
      ↓
Data Cleaning (SQL)
      ↓
Exploratory Data Analysis (SQL)
      ↓
Business Insights
      ↓
Power BI Dashboard
      ↓
Business Recommendations
Data Cleaning
Data preparation was performed entirely in SQL Server and included:

Data type validation and conversion Duplicate verification Missing value assessment Category standardization Feature preparation for analysis

📄 SQL Script:
01_Data_Cleaning.sql

Exploratory Data Analysis
The exploratory data analysis was organized into six thematic SQL scripts:

Analysis Area	SQL Script
Campaign Performance	02_Campaign_performance.sql
Customer Segmentation	03_Customer_segmentation.sql
Financial Profile	04_Financial_status.sql
Campaign Strategy	05_Campaign_strategy.sql
Macroeconomic Indicators	06_Macroeconomic_indicators.sql
Multidimensional Analysis	07_multidimensional_analysis.sql
Project Results
Analysis Area Key Finding Campaign Performance Overall subscription rate: 11.27% Customer Segmentation Customers aged 60+ achieved the highest subscription rate (39.56%) Occupation Retired customers and students were the strongest-performing customer groups Financial Profile Housing and personal loan status showed limited predictive value Campaign Strategy Cellular contacts (14.74%) significantly outperformed telephone (5.23%) Campaign History Previous campaign success achieved a 65.11% subscription rate Macroeconomic Indicators Lower Euribor rates were generally associated with higher subscription rates

Business Recommendations
Recommendation Expected Benefit Prioritize retirees, older customers and students Higher subscription rates Make cellular the primary communication channel Improved campaign performance Focus on the first few customer contacts Reduced marketing costs Use previous campaign history for customer targeting More accurate segmentation Optimize campaign timing Higher marketing efficiency Monitor macroeconomic conditions during campaign planning Better decision making Executive Summary

A concise business report summarizing the project methodology, key findings, and recommendations is available here:

📄 reports/Executive Summary.pdf

Repository Structure
Bank-Marketing-Campaign-Analysis/
│
├── data/
│   ├── bank-additional-full.csv
│   └── bank_marketing_clean.csv
│
├── sql/
│   ├── 01_data_cleaning.sql
│   ├── 02_Campaign_performance.sql
│   ├── 03_Customer_segmentation.sql
│   ├── 04_Financial_status.sql
│   ├── 05_Campaign_strategy.sql
│   ├── 06_Macroeconomic_indicators.sql
│   └── 07_multidimensional_analysis.sql
│
├── powerbi/
│   └── Bank Marketing Dashboard.pbix
│   ├── dashboard_page_1.png
│   └── dashboard_page_2.png
│
├── reports/
│   └── Executive Summary.pdf
│
└── README.md
Future Improvements
Develop predictive models to estimate customer subscription probability. Compare the performance of classification algorithms such as Logistic Regression, Random Forest. Build an interactive forecasting dashboard.

Author
Farah Bensalem

GitHub:
https://github.com/FARAHBENSALEM01

LinkedIn:
https://www.linkedin.com/in/farah-bensalem/

This is very close to a professional README, but I would still make several improvements if I were reviewing it as a hiring manager. My comments are about presentation, not the quality of your analysis.

Overall rating: 9.7/10

The project itself is excellent. The README just needs some polishing to improve readability and visual appeal.

1. The Dashboard section needs spacing

Right now it looks like:

## Dashboard

Interactive Dashboard
🔗 View Interactive Dashboard...

It should look like:

## Dashboard

<p align="center">
  <img src="images/dashboard_page_1.png" width="48%">
  <img src="images/dashboard_page_2.png" width="48%">
</p>

### Interactive Dashboard

🌐 **Power BI Service**

[Open Interactive Dashboard](YOUR_LINK)

📥 **Power BI File**

[Bank Marketing Dashboard.pbix](powerbi/Bank%20Marketing%20Dashboard.pbix)

Much cleaner.

2. The Dataset table

Don't leave the URL alone underneath.

Instead

Attribute	Value
Source	UCI Machine Learning Repository
Dataset	Bank Marketing (Additional Full)
Records	41,188
Variables	21
Target Variable	Term Deposit Subscription
Repository	UCI Dataset
3. Tools & Technologies

This currently becomes one long sentence.

Use a table.

Category	Tool
Database	SQL Server
Query Language	SQL (T-SQL)
Data Cleaning	SQL
Exploratory Data Analysis	SQL
Data Visualization	Power BI
Version Control	Git & GitHub
Documentation	Microsoft Word

Much easier to read.

4. Project Workflow

Don't leave it as plain text.

Put it inside a code block.

```text
Raw Dataset
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
Business Recommendations
```

GitHub renders this much better.

5. Data Cleaning

Instead of

Data type validation...
Duplicate...
Missing...

Write

Data preparation was performed in SQL Server and included:

- Data type validation and conversion
- Duplicate verification
- Missing value assessment
- Category standardization
- Feature preparation for analysis

📄 **SQL Script**

[01_Data_Cleaning.sql](sql/01_Data_Cleaning.sql)
6. Project Results

Excellent.

I'd only change the title.

Instead of

Project Results

I'd write

## Key Findings

It sounds more analytical.

7. Executive Summary

Instead of

A concise business report...

I'd write

## Executive Summary

A concise business report summarizing the methodology, key findings, and business recommendations is available below.

📄 [Executive Summary.pdf](reports/Executive%20Summary.pdf)
8. Repository Structure

Perfect.

Just make sure it's inside a code block.

9. Future Improvements

This is the weakest section.

I'd write

## Future Improvements

Future work could extend this project by:

- Building predictive models to estimate customer subscription probability.
- Comparing classification algorithms such as Logistic Regression, Decision Trees, and Random Forest.
- Developing an interactive predictive dashboard integrating machine learning outputs.

Looks much more polished.

10. Author

Don't write raw URLs.

Use Markdown links.

## Author

**Farah Bensalem**

- [GitHub](https://github.com/FARAHBENSALEM01)
- [LinkedIn](https://www.linkedin.com/in/farah-bensalem/)
11. One thing I would add

Between Business Question and Dataset, add a section called Project Scope.

Just three bullets.

## Project Scope

This project focuses on:

- Cleaning and preparing the Bank Marketing dataset using SQL.
- Performing exploratory data analysis to identify the factors associated with successful term deposit subscriptions.
- Developing an interactive Power BI dashboard to communicate business insights and recommendations.

It bridges the problem and the technical work nicely.

Final assessment

If you make the formatting changes above, I'd consider this a portfolio-quality README.

The project itself is strong because it demonstrates the complete analytics workflow:

Business understanding
SQL data preparation
Exploratory data analysis
Business insights
Power BI dashboard
Executive summary
GitHub documentation

That's exactly the kind of end-to-end project employers look for in an entry-level or junior data analyst portfolio. My recommendation now is to consider this project complete and move on to a different project that showcases additional skills, rather than continuing to refine this one.

in data cleaning add that we prepared a clean table to start eda: Data preparation was performed in SQL Server and included:

- Data type validation and conversion
- Duplicate verification
- Missing value assessment
- Category standardization
- Feature preparation for analysis

📄 **SQL Script**

[01_Data_Cleaning.sql](sql/01_Data_Cleaning.sql)

That's a good addition because it emphasizes that the cleaning phase produced an analysis-ready dataset, which is one of the main deliverables of data preparation.

I would phrase it like this:

## Data Cleaning



📄 **SQL Script:**  
[01_Data_Cleaning.sql](sql/01_Data_Cleaning.sql)

## Exploratory Data Analysis

The exploratory data analysis was organized into six thematic SQL scripts:

| Analysis Area | SQL Script |
|--------------|------------|
| Campaign Performance | [02_Campaign_performance.sql](sql/02_Campaign_performance.sql) |
| Customer Segmentation | [03_Customer_segmentation.sql](sql/03_Customer_segmentation.sql) |
| Financial Profile | [04_Financial_status.sql](sql/04_Financial_status.sql) |
| Campaign Strategy | [05_Campaign_strategy.sql](sql/05_Campaign_strategy.sql) |
| Macroeconomic Indicators | [06_Macroeconomic_indicators.sql](sql/06_Macroeconomic_indicators.sql) |
| Multidimensional Analysis | [07_multidimensional_analysis.sql](sql/07_multidimensional_analysis.sql) |

## Project Results
Analysis Area	Key Finding
Campaign Performance	Overall subscription rate: 11.27%
Customer Segmentation	Customers aged 60+ achieved the highest subscription rate (39.56%)
Occupation	Retired customers and students were the strongest-performing customer groups
Financial Profile	Housing and personal loan status showed limited predictive value
Campaign Strategy	Cellular contacts (14.74%) significantly outperformed telephone (5.23%)
Campaign History	Previous campaign success achieved a 65.11% subscription rate
Macroeconomic Indicators	Lower Euribor rates were generally associated with higher subscription rates

## Business Recommendations
Recommendation	Expected Benefit
Prioritize retirees, older customers and students	Higher subscription rates
Make cellular the primary communication channel	Improved campaign performance
Focus on the first few customer contacts	Reduced marketing costs
Use previous campaign history for customer targeting	More accurate segmentation
Optimize campaign timing	Higher marketing efficiency
Monitor macroeconomic conditions during campaign planning	Better decision making
Executive Summary

A concise business report summarizing the project methodology, key findings, and recommendations is available here:

📄 reports/Executive Summary.pdf

## Repository Structure

```text
Bank-Marketing-Campaign-Analysis/
│
├── data/
│   ├── bank-additional-full.csv
│   └── bank_marketing_clean.csv
│
├── sql/
│   ├── 01_data_cleaning.sql
│   ├── 02_Campaign_performance.sql
│   ├── 03_Customer_segmentation.sql
│   ├── 04_Financial_status.sql
│   ├── 05_Campaign_strategy.sql
│   ├── 06_Macroeconomic_indicators.sql
│   └── 07_multidimensional_analysis.sql
│
├── powerbi/
│   └── Bank Marketing Dashboard.pbix
│   ├── dashboard_page_1.png
│   └── dashboard_page_2.png
│
├── reports/
│   └── Executive Summary.pdf
│
└── README.md
```
## Future Improvements
Develop predictive models to estimate customer subscription probability.
Compare the performance of classification algorithms such as Logistic Regression, Random Forest.
Build an interactive forecasting dashboard.

## Author

Farah Bensalem

## GitHub: 
https://github.com/FARAHBENSALEM01
## LinkedIn: 
https://www.linkedin.com/in/farah-bensalem/
