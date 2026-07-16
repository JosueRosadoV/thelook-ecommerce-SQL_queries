# E-Commerce Customer Lifecycle & Cohort Analytics (SQL)

An advanced analytics engineering project utilizing Google BigQuery to analyze user behavior and customer segmentation using the public `thelook_ecommerce` dataset. 

---

## 🛠️ Tech Stack & SQL Concepts
*   **Database Engine:** Google BigQuery (Google Cloud Platform)
*   **SQL Techniques:** Common Table Expressions (CTEs), Joins, Date/Time Functions (`DATE_DIFF`), Data Aggregation, and Data Auditing.

---

## 📁 Repository Structure
*   `schema_exploration.sql`: Initial data quality profiling, duplicate checks, and schema auditing.
*   `rfm_segmentation.sql`: Behavioral customer scoring based on Recency, Frequency, and Monetary value.

---

## 📊 Analytical Deep Dives & Key Results

### 1. Data Exploration & Quality Audit (`schema_exploration.sql`)
Before building analytical models, I audited the dataset to establish a baseline of data integrity, identify missing values, and check for logical anomalies.

#### Sample Audit Results


#### Key Takeaways:


### 2. RFM Customer Segmentation (`rfm_segmentation.sql`)
By analyzing transactional history, I calculated Recency, Frequency, and Monetary metrics for each customer.

#### RFM Scoring Output (Sample)


#### Key Takeaways:


---

## 🚀 How to Run the Queries
1. Log into your [Google Cloud Console BigQuery interface](https://console.cloud.google.com/bigquery).
2. Pin the public dataset: `bigquery-public-data.thelook_ecommerce`.
3. Open a new query editor tab and run any of the `.sql` scripts provided in this repository.
