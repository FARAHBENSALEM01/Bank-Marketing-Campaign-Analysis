# Improving Term Deposit Conversion: A Data-Driven Telemarketing Strategy for a Retail Bank

A retail bank spent significant telemarketing budget contacting customers about term deposits—but only **11 out of every 100 calls converted**. This project investigates who the bank should be calling, through which channel, and under what conditions, so the marketing team can direct limited outreach capacity toward the customers most likely to subscribe.

Acting as an analytics consultant to the bank's marketing team, I used **SQL Server** to clean and analyze **41,188 customer contact records** and **Power BI** to build a decision-support dashboard for campaign planning.

---

# Business Problem

The bank invested substantial resources in telemarketing campaigns but achieved a relatively low term deposit subscription rate (**11.27%**). Without understanding which customers are most likely to subscribe and which campaign practices are most effective, marketing resources may be allocated inefficiently, resulting in unnecessary costs and missed sales opportunities.

# Business Objective

Acting as an analytics consultant to the bank's marketing team, this project identifies which customer segments, contact strategies, and market conditions are associated with successful term deposit conversions—and translates those patterns into practical targeting and channel recommendations for future campaigns.

# Business Questions

- Which customers is the bank currently wasting calls on, and which segments should be prioritized instead?
- Is cellular or landline outreach more cost-effective?
- How many contact attempts are worthwhile before moving to the next lead?
- Does a customer's response to a previous campaign predict future conversion?
- Does a customer's financial profile (housing loan, personal loan) improve targeting accuracy?
- Should campaign timing be adjusted based on interest rates or broader economic conditions?

---

# Dashboard

[![Dashboard Page 1](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/raw/main/powerbi/dashboard_page_1.png)](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/powerbi/dashboard_page_1.png)

[![Dashboard Page 2](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/raw/main/powerbi/dashboard_page_2.png)](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/powerbi/dashboard_page_2.png)

### 🌐 Interactive Dashboard

[Open Power BI Dashboard](https://app.powerbi.com/links/NVe49A3P-m?ctid=b5b5d8fb-3a53-425c-924d-8eaff50e1945&pbi_source=linkShare)

### 📥 Power BI File

[Bank Marketing Dashboard.pbix](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/powerbi/Bank%20Marketing%20Dashboard.pbix)

---

# Methodology

```text
Business Understanding
        ↓
Data Audit
        ↓
Data Preparation
        ↓
Exploratory Data Analysis
        ↓
Insight Generation
        ↓
Business Recommendations
        ↓
Power BI Decision Dashboard
```

Rather than starting from the dataset, the analysis began with the business questions. Every SQL query and Power BI visualization was designed to answer a business decision rather than simply explore the data.

---

# Key Findings

## Previous campaign response is the strongest predictor

Customers who subscribed in a previous campaign converted at **65.11%**, nearly **six times** the overall campaign average of **11.27%**. Previous response history should therefore be the first filter when prioritizing future leads.

## Older customers represent the highest-value segment

Retirees and customers aged **60+** achieved a **39.56%** conversion rate, making them the strongest demographic segment identified. Students also showed unusually strong performance, suggesting high conversion potential at both ends of the working-life spectrum.

## Mobile outreach substantially outperforms landlines

Cellular contacts converted at **14.74%**, compared with only **5.23%** for landlines—almost a threefold difference. Prioritizing mobile outreach represents a straightforward operational improvement.

## Financial product ownership contributes little

Housing loan and personal loan status showed limited predictive value. Removing these variables from targeting criteria simplifies segmentation without materially reducing effectiveness.

## Lower Euribor rates coincide with higher conversion

Periods of lower Euribor rates were associated with stronger subscription performance, suggesting campaign timing may influence outcomes. Additional monthly analysis is recommended before making this a fixed planning rule.

## Campaign baseline

Across all **41,188** customer contacts, the overall subscription rate was **11.27%**.

---

# Business Recommendations

1. Prioritize previous campaign responders before applying demographic filters.
2. Focus outreach on customers aged **60+** and retirees.
3. Make cellular contact the default communication channel.
4. Limit repeated contact attempts and redirect effort toward new prospects.
5. Remove housing and personal loan ownership from targeting rules.
6. Monitor interest-rate conditions as an early planning signal while collecting additional evidence.

---

# Dataset

| Attribute | Value |
|-----------|-------|
| Source | UCI Machine Learning Repository |
| Dataset | Bank Marketing (Additional Full) |
| Records | 41,188 |
| Variables | 21 |
| Target Variable | Term Deposit Subscription |
| Repository | https://archive.ics.uci.edu/dataset/222/bank+marketing |

---

# Tools & Technologies

| Category | Tool |
|----------|------|
| Database | SQL Server |
| Query Language | SQL (T-SQL) |
| Data Cleaning | SQL |
| Exploratory Data Analysis | SQL |
| Business Intelligence | Power BI |
| Version Control | Git & GitHub |
| Documentation | Microsoft Word |

---

# SQL Analysis

Data preparation was performed in SQL Server to validate data quality and produce an analysis-ready dataset. Tasks included:

- Data type validation
- Duplicate verification
- Missing value assessment
- Category standardization
- Feature preparation

### Data Cleaning

📄 [01_Data_Cleaning.sql](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/sql/01_Data_Cleaning.sql)

### Exploratory Analysis

| Analysis Area | Business Question | SQL Script |
|---------------|-------------------|------------|
| Campaign Performance | What's the baseline performance? | [02_Campaign_performance.sql](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/sql/02_Campaign_performance.sql) |
| Customer Segmentation | Which customers should be prioritized? | [03_Customer_segmentation.sql](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/sql/03_Customer_segmentation.sql) |
| Financial Profile | Does financial product ownership predict conversion? | [04_Financial_status.sql](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/sql/04_Financial_status.sql) |
| Campaign Strategy | Which channel and contact strategy perform best? | [05_Campaign_strategy.sql](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/sql/05_Campaign_strategy.sql) |
| Macroeconomic Indicators | Does campaign timing matter? | [06_Macroeconomic_indicators.sql](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/sql/06_Macroeconomic_indicators.sql) |
| Multidimensional Analysis | Does previous response predict future conversion? | [07_multidimensional_analysis.sql](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/sql/07_multidimensional_analysis.sql) |

---

# Executive Summary

A concise business report summarizing the methodology, key findings, and recommendations.

📄 [Executive Summary.pdf](https://github.com/FARAHBENSALEM01/Bank-Marketing-Campaign-Analysis/blob/main/reports/Executive%20Summary.pdf)

---

# Repository Structure

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

---

# Future Improvements

- Quantify the Euribor relationship at monthly level to support campaign scheduling.
- Test whether the cellular advantage remains after controlling for age and previous campaign response.
- Develop predictive models (Logistic Regression, Decision Trees, Random Forest) to estimate customer subscription probability.
- Build an interactive predictive dashboard for real-time lead scoring.

---

# Author

**Farah Bensalem**

PhD in Monetary and Banking Economy • Data Analyst • Business Intelligence

- **GitHub:** https://github.com/FARAHBENSALEM01
- **LinkedIn:** https://www.linkedin.com/in/farah-bensalem/

---

**Skills demonstrated:** SQL, Data Cleaning, Exploratory Data Analysis (EDA), Customer Segmentation, Business Intelligence, Power BI Dashboard Design, Marketing Analytics, Business Recommendations, Decision Support, and Git/GitHub.
