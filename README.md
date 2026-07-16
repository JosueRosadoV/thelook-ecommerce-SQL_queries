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
| first_join_date | last_join_date | total_users |
| :--- | :--- | :--- |
| 2019-01-02 00:18:00 UTC | 2026-07-15 19:44:10 UTC | 100,000 |

| first_order_date | last_order_date | total_orders | days_date_range |
| :--- | :--- | :--- | :--- |
| 2019-01-07 06:19:43 UTC | 2026-07-16 00:47:44 UTC | 124,850 | 2,746 |

| number_of_non_existent_users |
| :--- |
| 0 |

#### Key Takeaways (Data Quality & Referential Integrity):
*   **Data Integrity & Completeness:** Audited a sample size of 100,000 unique registered users with a transaction history spanning 124,850 completed orders, providing a highly reliable statistical foundation for behavioral analysis.
*   **Timeline Alignment:** Verified that transactional history spans 2,746 continuous days (~7.5 years), beginning on January 7, 2019 (just 5 days after the platform's first user registration on January 2, 2019), confirming no missing historical periods.
*   **100% Referential Integrity:** Confirmed exactly **0 orphaned orders** in the dataset. Every transaction recorded perfectly maps to an active user ID in the database, validating the relational schema's reliability before conducting cohort modeling.

### 2. RFM Customer Segmentation (`rfm_segmentation.sql`)
By analyzing transactional history, I calculated Recency, Frequency, and Monetary metrics for each customer.

#### RFM Scoring Output (Sample)


#### Key Takeaways:


---

## 🚀 How to Run the Queries
1. Log into your [Google Cloud Console BigQuery interface](https://console.cloud.google.com/bigquery).
2. Pin the public dataset: `bigquery-public-data.thelook_ecommerce`.
3. Open a new query editor tab and run any of the `.sql` scripts provided in this repository.
