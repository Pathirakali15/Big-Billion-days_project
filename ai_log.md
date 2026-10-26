# Part D — AI-Assisted Analysis with Human-in-the-Loop Verification

## Task 1: Five-Part Prompt for Part A Q13

### Role
Act as an experienced SQL analyst who writes accurate and efficient SQL queries.

### Task
Write an SQL query to compare each sales representative's monthly revenue with their monthly target and classify their performance into three tiers.

### Context
The database contains three tables:

`orders`: `order_id`, `customer_id`, `item`, `quantity`, `amount`, `status`, `order_month`
`customers`: `customer_id`, `first_name`, `last_name`, `region`, `age`, `rep_id`
`reps`: `rep_id`, `rep_name`, `monthly_target`

Use SQLite SQL syntax. Join the tables using `orders.customer_id = customers.customer_id` and `customers.rep_id = reps.rep_id`.

### Constraints
- Include completed orders only.
- Group the results by representative name, order month, and monthly target.
- Use these three performance tiers:
  - Below Target: revenue is less than the monthly target.
  - On Target: revenue is at least the monthly target but less than 110% of the target.
  - Above Target: revenue is at least 110% of the target.
- Do not use `WITH` clauses or stored procedures.
- Use `SUM(amount)` to calculate monthly revenue.


## Task 2: Scenario D1 — Defect Inspection

## Task 2: Scenario D1 — Defect Inspection

The assistant's SQL query contains four defects.

| Defect | Classification | Correct Fix |
|---|---|---|
| 1. The table `sales` does not exist in the actual database. | Fake method/function | Replace `sales` with the correct tables: `orders`, `customers`, and `reps`, joined using their actual keys. |
| 2. The columns `region_name` and `total_sales` do not exist in the actual schema. | Fake method/function | Use `customers.region` for the region and `orders.amount` for revenue. |
| 3. `SUM(total_sales) > 80000` is used in the `WHERE` clause. | Logic error | Use `HAVING SUM(o.amount) > 80000` after grouping, because aggregate conditions must be applied after `GROUP BY`. |
| 4. The claim that North revenue grew by 38% month over month is unsupported by the query. | Phantom statistic | Calculate the percentage change using verified monthly revenue results before making a growth claim. |


## Task 3: Corrected SQL and Verification

### Corrected Query
The corrected SQL query is saved in `sql/d1_corrected.sql`. It joins the `orders` and `customers` tables, filters completed orders, groups revenue by region, and uses `HAVING SUM(o.amount) > 80000`.

### Query Result
The conformed result from the corrected query is:

| Region | Revenue |
|---|---:|
| North | 119300 |
| South | 82500 |

**Verification status:** The query must be executed against the actual database to confirm these results.

### North Revenue Change: 2026-09 to 2026-10

September 2026 revenue = ₹53,500

October 2026 revenue = ₹41,300

Percentage change:

\[
\frac{41,300-53,500}{53,500}\times100=-22.8\%
\]

North region revenue decreased by 22.8% from September to October 2026. Therefore, the assistant's claim that North revenue grew by 38% is contradicted by the Q11 results.


## Task 4: Human-in-the-Loop Protocol

### 1. Specification
I identified the business requirement before accepting the AI-generated SQL query. The query must calculate revenue from completed orders only, group the results by region, and display regions with revenue greater than ₹80,000.

### 2. Execution
I reviewed the original AI-generated query and compared it with the actual database schema. I prepared a corrected SQL query using the existing `orders` and `customers` tables and the appropriate join condition.

### 3. Inspection
I inspected the query for incorrect table names, incorrect column names, and improper use of aggregate functions. The original query used a non-existent `sales` table, non-existent columns `region_name` and `total_sales`, and an aggregate condition in the `WHERE` clause instead of `HAVING`.

### 4. Verification
I checked the corrected query against the database results and compared the regional revenue figures with the monthly revenue figures in Q11. The corrected query is expected to return North with ₹119,300 and South with ₹82,500. North's revenue decreased from ₹53,500 in September 2026 to ₹41,300 in October 2026, a decrease of 22.8%. Therefore, the claim that North's revenue grew by 38% is contradicted by the data.

### 5. Decision
**Reject the original AI answer** because it contains schema errors, an aggregate-filtering error, and an unsupported growth claim. **Accept the corrected query only after successful execution and verification** against the actual database. The expected regional revenue results and Q11 monthly figures provide the evidence for this decision.


## Task 5: Scenario D2 — Formula Error

## Task 5: Scenario D2 — Formula Error

### Five-Part Prompt

**Role:** Act as an Excel and spreadsheet formula expert.

**Task:** Identify why the VLOOKUP formula returns "value not found" and provide a corrected formula.

**Context:** The `products` tab contains data in cells `A1:C10`. Row 1 contains headers, product names are in column A, and unit prices are in column C. Cell `G2` on the `orders` tab contains the text ` Smart Watch`, with a leading space. The original formula is `=VLOOKUP(G2, $A$2:$C$10, 3, FALSE)`.

**Constraints:** Use an exact-match lookup. Do not change the product table data. Remove unwanted leading or trailing spaces from the lookup value.

**Format:** Explain the root cause in simple words and provide the corrected formula.

### Root Cause

The lookup value in cell `G2` contains an unwanted leading space before `Smart Watch`. Because VLOOKUP uses an exact match with `FALSE`, the lookup value does not match the product name in the table.

### Repaired Formula

`=VLOOKUP(TRIM(G2), $A$2:$C$10, 3, FALSE)`

The `TRIM` function removes extra spaces around the lookup value, allowing VLOOKUP to find the matching product and return its unit price from column C.

## Task 6: Skeptical-Analyst Check on Part C

### Prompt

Act as a skeptical data analyst and critically review the *Big Billion Days Regional Performance Review* project. Verify all findings using the provided `orders_enriched.csv` and `orders_clean.csv` datasets, SQL query results, spreadsheet analysis, and Tableau Public dashboard. Do not accept any conclusion without supporting evidence. Check data quality, missing values, duplicate records, revenue calculations, category and regional totals, and consistency across SQL, spreadsheet, and dashboard results. Clearly distinguish verified facts from assumptions. Identify unsupported claims, explain discrepancies, and provide evidence-based recommendations. Do not invent data or silently replace missing values.

### Unstated Assumptions and Evidence

1. **Assumption: The `amount` column represents the correct revenue for each completed order.**  
   **Data check:** Filter the dataset to completed orders and calculate `SUM(amount)`. Compare the result with the SQL query output and Tableau KPI. Check for missing or invalid amounts before treating the total as final.

2. **Assumption: Product categories and unit prices are correctly assigned.**  
   **Data check:** Compare each product in the cleaned dataset with the documented product-category and unit-price mapping. Recalculate `revenue_calc` using `unit_price × quantity` and compare it with the reported `amount`. Investigate any differences instead of assuming both values must match.

3. **Assumption: Regional, category-wise, and monthly revenue findings accurately represent the dataset.**  
   **Data check:** Independently aggregate completed-order revenue by region, category, and month. Confirm that regional and category totals reconcile with the overall revenue total of ₹346,200. Verify the same figures against SQL results, spreadsheet summaries, and the Tableau dashboard before making recommendations.