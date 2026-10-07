# Customer Shopping Behavior Analysis

An end-to-end data analytics project examining **3,900 customer transactions** to uncover product preferences, demographic trends, and behavioral patterns that inform targeted marketing and product strategies[cite: 4, 5].
---

## 🚀 Project Overview
Retail businesses need actionable insights into customer purchasing habits to optimize promotional campaigns, inventory, and membership programs. This project covers the full data lifecycle:
* **Data Ingestion & Cleaning**: Processed raw transactional logs using Python and Pandas[cite: 1, 7].
* **Feature Engineering**: Created custom demographic bins and frequency metrics[cite: 1, 7].
* **Relational Storage**: Loaded clean data into a **PostgreSQL** database for advanced querying[cite: 1, 7].
* **Business Intelligence**: Executed complex SQL analytical queries and built an interactive **Power BI Dashboard**[cite: 3, 11].
---

## 📊 Dataset Summary
* **Size**: 3,900 rows and 18 columns[cite: 6].
* **Key Features**: Customer demographics, purchase amounts, item categories, review ratings, shipping types, and discount metrics[cite: 6].
* **Data Quality Handling**: Imputed 37 missing values in `Review Rating` using category-level medians and dropped redundant columns[cite: 6, 7].
---

## 🛠️ Tech Stack & Tools
* **Programming Language**: Python[cite: 7]
* **Libraries**: Pandas, NumPy, SQLAlchemy[cite: 1, 7]
* **Database & Querying**: PostgreSQL, `psycopg2`, SQL[cite: 1, 3, 7]
* **Visualization**: Power BI[cite: 11]
---

## 🔄 Project Workflow

### 1. Python EDA & Preprocessing (`pandas`)
* **Inspection**: Assessed data structure and summary statistics via `df.info()` and `df.describe()`[cite: 7].
* **Data Cleaning**: Handled missing review ratings through category medians and cleaned column naming conventions[cite: 1, 6, 7].
* **Feature Engineering**: 
  * Created `age_group` brackets (Young Adult, Adult, Middle-age, Senior) using quantile binning[cite: 1, 7].
  * Converted text-based purchase frequencies into numeric `purchase_frequency_day` values[cite: 1, 7].
* **Database Export**: Persisted the cleaned dataset directly into a PostgreSQL relational database using `SQLAlchemy`[cite: 1, 7].

### 2. SQL Analysis & Key Queries
Key metrics and business questions explored in SQL include:
* **Revenue by Gender**: Analyzed total spend distribution across genders[cite: 3, 8].
* **High-Spend Discount Users**: Identified customers utilizing discounts while maintaining above-average purchase amounts[cite: 3, 8].
* **Top-Rated Items**: Filtered items with the highest average customer review ratings[cite: 3, 8].
* **Customer Segmentation**: Segmented buyers into *Loyal*, *Returning*, and *New* cohorts based on previous purchase counts[cite: 3, 10].

---

## 📈 Key Findings & Insights

* **Revenue Distribution**: Male customers account for roughly 68% of total revenue ($\sim$\$157,890) compared to female customers ($\sim$\$75,191)[cite: 8].
* **Shipping Impact**: Express shipping orders average slightly higher purchase amounts (\$60.48) compared to Standard shipping (\$58.46)[cite: 9].
* **Customer Segmentation**: Repeat buyers form the largest cohort, with 3,116 classified as returning/frequent customers[cite: 10].
* **Discount Dependency**: Categories like Hats (50%), Sneakers (49%), and Coats (49%) exhibit high reliance on promotional codes and discounts[cite: 9].

---

## 📊 Power BI Interactive Dashboard
An interactive Power BI report was developed to empower stakeholders with real-time slicing and filtering[cite: 11]:
* **KPI Cards**: Track total customers (~4K), average purchase amount (\$59.76), and average review rating (3.75)[cite: 11].
* **Donut Chart**: Displays the subscription status split (Non-subscribers: 73%, Subscribers: 27%)[cite: 11].
* **Visual Breakdown**: Bar charts comparing revenue and sales volume across product categories and age groups[cite: 11].
* **Dynamic Slicers**: Filter data interactively by Gender, Category, Shipping Type, and Subscription Status[cite: 11].

---

## 💡 Strategic Business Recommendations
1. **Boost Subscriptions**: Introduce exclusive tier benefits and targeted trial incentives for high-frequency shoppers[cite: 12].
2. **Refine Discount Strategy**: Limit reliance on blanket discounts for high-dependency SKUs and focus discounts selectively on retention campaigns[cite: 12].
3. **Targeted Campaigns**: Prioritize marketing initiatives toward Young Adult and Middle-age demographics who demonstrate strong engagement and higher basket sizes[cite: 12].

---
## 📂 Repository Structure
```text
├── data/                    # Raw and cleaned CSV datasets
├── notebooks/               # Jupyter Notebooks for EDA and preprocessing
├── sql/                     # PostgreSQL queries and analytical scripts
├── dashboard/               # Power BI report files (.pbix)
└── README.md                # Project documentation
