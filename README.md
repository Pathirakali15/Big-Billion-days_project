# Big Billion Days Regional Performance Review
### SQL, Spreadsheet, Dashboard and AI-Verified Analysis

## 1. Project Overview

The **Big Billion Days Regional Performance Review** project analyzes synthetic sales data from Flipkart's Big Billion Days (BBD) sale. The objective is to identify the regions, product categories, and sales representatives contributing to completed-order revenue and to provide data-driven recommendations for future promotional spending.

This project uses SQL for data extraction and reporting, spreadsheet tools for cleaning and reconciliation, a dashboard specification for visualization, and AI-assisted analysis with human verification to ensure that the final findings are accurate and traceable.

## 2. Tools and Technologies

- **SQL Compiler:** [Enter the SQL compiler actually used]
- **SQL Dialect:** [SQLite / MySQL / PostgreSQL — enter the dialect actually used]
- **Spreadsheet Tool:** [Google Sheets / Microsoft Excel — enter the tool actually used]
- **Dashboard:** [Tableau Public built / Specification only; Tableau Public not built]
- **Data Format:** CSV
- **Documentation Format:** Markdown

## 3. Dataset Description

The original dataset contains four relational tables:

| Table | Description | Rows |
|---|---|---:|
| `reps` | Sales representative details and monthly targets | 4 |
| `products` | Product names, categories, and unit prices | 9 |
| `customers` | Customer details, regions, and assigned representatives | 24 |
| `orders` | Order details, quantities, amounts, statuses, and months | 90 |

The dataset includes completed, pending, and disputed orders. According to the project definition, revenue is calculated using only orders whose status is `completed`. Missing amounts are preserved as missing values rather than being silently replaced.

## 4. Key Findings

The cleaned completed-order dataset contains **63 orders**, with a total revenue of **₹346,200** and **106 units sold**. North is the highest-revenue region, contributing ₹119,300, followed by South at ₹82,500, West at ₹74,900, and East at ₹69,500. Electronics is the leading product category with ₹142,300 in revenue, followed by Home at ₹126,400 and Apparel at ₹77,500. North's revenue decreased from ₹53,500 in September 2026 to ₹41,300 in October 2026, a month-over-month decline of approximately 22.8%. These findings should be reconciled with the SQL query results, spreadsheet pivots, and dashboard specification before being used for business decisions.

 5. Project Structure and File Index

| File | Part | Purpose |
|---|---|---|
| `README.md` | All Parts | Project overview, tools, findings, and file index |
| `sql/00_schema_and_seed.sql` | Part A | Creates and loads the four database tables |
| `sql/q01.sql` | Part A | Retrieves pending orders |
| `sql/q02.sql` | Part A | Identifies orders with missing amounts |
| `sql/q03.sql` | Part A | Retrieves the five largest completed orders |
| `sql/q04.sql` | Part A | Filters the target customer segment |
| `sql/q05.sql` | Part A | Calculates headline revenue KPIs |
| `sql/q06.sql` | Part A | Summarizes orders by status |
| `sql/q07.sql` | Part A | Identifies strong-performing products |
| `sql/q08.sql` | Part A | Summarizes customer profiles by region |
| `sql/q09.sql` | Part A | Produces the order-level enriched fact table |
| `sql/q10.sql` | Part A | Identifies customers who never ordered |
| `sql/q11.sql` | Part A | Reports revenue by region and month |
| `sql/q12.sql` | Part A | Assigns product contribution tiers |
| `sql/q13.sql` | Part A | Evaluates sales representative performance against targets |
| `sql/d1_corrected.sql` | Part D | Corrects and verifies the assistant's regional revenue query |
| `results/query_results.md` | Part A | Records seed checks, query row counts, and query results |
| `data/orders_enriched.csv` | Part A | Stores the 90-row order-level query output |
| `data/orders_clean.csv` | Part B | Stores the 63 completed orders after cleaning and enrichment |
| `docs/spreadsheet_notes.md` | Part B | Documents formulas, data validation, pivots, and reconciliation |
| `docs/dashboard_spec.md` | Part C | Defines dashboard KPIs, worksheets, findings, and recommendations |
| `docs/ai_log.md` | Part D | Records AI prompts, identified defects, verification, and decisions |

## 6. Methodology

### Part A — SQL Reporting Layer
The four tables are created and populated with the supplied seed data. Thirteen SQL queries are used to investigate order statuses, missing amounts, headline KPIs, customer profiles, product performance, regional trends, and sales representative performance. Query `q09` joins orders, customers, and representatives to produce the enriched order-level dataset.

### Part B — Spreadsheet Cleaning and Pivot Layer
The enriched CSV is imported into a spreadsheet. Customer names are standardized, product categories and unit prices are added through lookup formulas, and calculated revenue is derived from unit price and quantity. Completed orders are extracted, summary statistics and pivot tables are prepared, and the results are reconciled with the SQL output.

### Part C — Dashboard Specification and Business Narrative
The cleaned CSV provides the source for two KPI cards and four worksheets: revenue by region, revenue by category, revenue trends by month and category, and a region-by-category detail table. The specification documents the dashboard layout, numerical observations, recommendations, and reconciliation checks.

### Part D — AI-Assisted Analysis and Verification
AI-generated SQL, spreadsheet troubleshooting, and analytical claims are reviewed critically. Unsupported tables, columns, aggregate conditions, and statistics are identified. Corrected queries and formulas are checked against the supplied schema and data before their findings are accepted.

## 7. Data Quality and Reconciliation

The project checks for missing amounts, inconsistent customer-name formatting, duplicate order identifiers, unexpected product mappings, and inconsistent numeric data types. Revenue is calculated using completed orders only.

The following totals are expected to reconcile across the SQL results, spreadsheet summaries, and dashboard specification:

- Completed orders: **63**
- Total revenue: **₹346,200**
- Total units sold: **106**
- Revenue by region: **₹346,200**
- Revenue by category: **₹346,200**

Any discrepancy must be investigated and documented rather than hidden or silently corrected.

## 8. Assumptions

1. Revenue means the sum of `amount` for completed orders only.
2. Pending and disputed orders are excluded from revenue calculations.
3. Missing amounts are not imputed; they remain missing and are documented.
4. Product categories and unit prices follow the supplied `products` table.
5. `order_month` is retained as text in `YYYY-MM` format.
6. The cleaned CSV contains only completed orders and is the data source specified for Part C.
7. Dashboard implementation status is reported honestly: a written specification does not imply that a Tableau Public dashboard was actually built.

## 9. Expected Outcome

The final repository provides a traceable analytics workflow in which SQL query results, spreadsheet calculations, dashboard figures, and AI-verification notes can be checked against one another. The goal is to support regional and category-level promotional decisions using verified data rather than unsupported assumptions.

