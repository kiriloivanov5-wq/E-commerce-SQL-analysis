# E-commerce-SQL-analysis
End-to-End E-Commerce Data Analysis using Google BigQuery (SQL) and Google Sheets. Uncovering insights on sales trends, geography, customer demographics, and payment behavior.

## 📌 Project Overview
This project focuses on conducting an End-to-End Exploratory Data Analysis (EDA) of a large-scale e-commerce dataset containing over 50,000 transaction records. Using **Google BigQuery (SQL)** for data extraction and aggregation, and **Google Sheets** for data cleaning and visualization, this analysis uncovers critical business insights regarding sales trends, geographical performance, customer demographics, and payment behavior.
## 🔍 Key Insights & Business Findings

### 1. Sales Performance & Trend Analysis
* **Observation:** Monthly revenue maintains a highly stable plateau at approximately **$1M - $1.1M** per month. The data reveals an **absence of seasonality** across the observed years.
* **Data Anomalies Handled:** Identified partial/incomplete data segments at the starting boundary (March 2023) and closing boundary (March 2025) of the dataset, which initially caused artificial revenue drops on charts.
* ![Sales Trend](visualizations/Revenue%20by%20month.png)
* ![Table of dynamic of revenue](https://docs.google.com/spreadsheets/d/1UVBG-aJYLanHam7OuVJrcw5niduayK7bVPvxSTY62Sc/edit?usp=sharing)

### 2. Geographical Sales & Category Distribution
* **High Diversification:** Sales are perfectly distributed globally. Core markets including the US, UK, France, Germany, Canada, Brazil, Mexico, Australia, India, and Japan generate an identical revenue bracket of **$2.4M - $2.5M** each.
* **Category Balance:** Every product category (`Sports`, `Toys`, `Books`, etc.) accounts for a stable **11.5% - 13.5%** share of total revenue within *every single country*. 
* *Analyst's Note:* This extreme uniformity strongly suggests the dataset's synthetic nature (e.g., standard uniform distribution modeling), a critical structural detail identified during the data profiling phase.
* ![Revenue by Country](visualizations/Revenue%20by%20country.png)
* ![Revenue by Category](visualizations/Revenue%20by%20category.png)
* ![Table of revenue by country and category](https://docs.google.com/spreadsheets/d/1Zc1MfG30ZxxhhoSm-SYpQhHzxPUfC464-Qskpmf8h0I/edit?usp=sharing)

### 3. Regional Payment Preferences
By ranking payment options using window functions, distinct local preferences were isolated:
* **PayPal** is the leading payment method in the **UK, India, and Mexico**.
* **UPI** holds dominance in **Australia and Canada**.
* **Debit Cards** are preferred in the **US and Germany**, while **Credit Cards** lead in **France**.
* *Strategic Action:* Because payment methods have highly uniform shares (~17-18% each per country), the business must retain all local transaction gateways to avoid checkout friction.
*  ![Table of number of payments methods](https://docs.google.com/spreadsheets/d/1zVf_nQzPkLs1zYutknI1DN44nvApkicsj_yYvOTIQy0/edit?usp=sharing)

### 4. Demographic Profiling & Purchasing Patterns
Segmenting customers into specific age groups via conditional logic revealed clear behavioral dynamics:
* **Revenue Drivers:** The **31–50 (Middle-Aged)** bracket is the core financial engine, generating **$9.59M**, followed closely by the **51+ (Senior)** group at **$9.41M**. The **18–30 (Young)** demographic contributes the lowest revenue (**$6.15M**).
* **Behavioral Preferences (Top-1 Categories by Volume):**
  * **Young (18–30):** Prefer **`Sports`** products (Active lifestyle focus).
  * **Middle-Aged (31–50):** Prefer **`Clothing`** (Family & lifestyle management).
  * **Seniors (51+):** Prefer **`Toys`** (Likely purchasing gifts for children/grandchildren).
* ![Table of purchase by age](https://docs.google.com/spreadsheets/d/1ai4bESwDEddC8VPNDJE2NYTDAAIdmaQocS5M4U9ZEIg/edit?usp=sharing)
---

## 📁 Repository Structure
* `/scripts` — Contains structured `.sql` production scripts for each analytical step.
* `/visualizations` — Contains dashboard screenshots, geographic maps, and trend charts.
