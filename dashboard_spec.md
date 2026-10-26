# Part C — Dashboard Specification and Business Narrative

## 1. Data Source

**Data source:** `data/orders_clean.csv`

The dashboard uses the cleaned completed-orders dataset containing 63 completed orders. The data source contains 13 columns: 9 Dimensions and 4 Measures.

| Column | Classification | Description |
|---|---|---|
| order_id | Dimension | Unique order identifier |
| order_month | Dimension | Month of the order |
| clean_first_name | Dimension | Cleaned customer first name |
| clean_last_name | Dimension | Cleaned customer last name |
| region | Dimension | Sales region |
| rep_name | Dimension | Sales representative |
| item | Dimension | Product name |
| category | Dimension | Product category |
| status | Dimension | Order status |
| unit_price | Measure | Price per unit |
| quantity | Measure | Units ordered |
| amount | Measure | Recorded order amount |
| revenue_calc | Measure | Calculated revenue using unit price and quantity |

The `order_id` field is treated as a Dimension because it identifies orders and should not be summed. The four Measures are `unit_price`, `quantity`, `amount`, and `revenue_calc`.

## 2. KPI Cards

The dashboard displays two KPI cards at the top.

| KPI Card | Calculation | Required Value |
|---|---|---:|
| Total Revenue | SUM(amount) | ₹346,200 |
| Total Units Sold | SUM(quantity) | 106 units |

The Total Revenue KPI equals Part A's Q05 `total_revenue` of ₹346,200, confirming that the dashboard uses the same completed-order revenue total.

## 3. Chart Sheets

### 3.1 Revenue by Region

**Chart type:** Bar chart

**Fields:**
- Rows: `region`
- Columns: `SUM(amount)`
- Colour: `region`

A bar chart makes it easy to compare total revenue across regions and identify the highest-performing region.

**Chart data table:**

| Region | Revenue (INR) |
|---|---:|
| East | 69,500 |
| North | 119,300 |
| South | 82,500 |
| West | 74,900 |
| **Grand Total** | **346,200** |

### 3.2 Revenue by Category

**Chart type:** Bar chart

**Fields:**
- Rows: `category`
- Columns: `SUM(amount)`
- Colour: `category`

A bar chart clearly compares the revenue contribution of each product category.

**Chart data table:**

| Category | Revenue (INR) |
|---|---:|
| Apparel | 77,500 |
| Electronics | 142,300 |
| Home | 126,400 |
| **Grand Total** | **346,200** |

### 3.3 Revenue Trend by Month and Category

**Chart type:** Line chart

**Fields:**
- Columns: `order_month`
- Rows: `SUM(amount)`
- Colour: `category`

A line chart is suitable for showing how revenue changes over time and comparing monthly trends across categories.

**Chart data table:**

| Order Month | Apparel | Electronics | Home | Total |
|---|---:|---:|---:|---:|
| 2026-09 | 24,700 | 43,000 | 30,600 | 98,300 |
| 2026-10 | 30,600 | 49,900 | 12,600 | 93,100 |
| 2026-11 | 22,200 | 49,400 | 83,200 | 154,800 |
| **Grand Total** | **77,500** | **142,300** | **126,400** | **346,200** |

### 3.4 Region x Category Detail

**Chart type:** Text table (crosstab)

**Fields:**
- Rows: `region`
- Columns: `category`
- Text/Colour: `SUM(amount)`

A text table provides exact revenue values for every region-category combination, making detailed comparisons easier.

**Chart data table:**

| Region | Apparel | Electronics | Home | Total |
|---|---:|---:|---:|---:|
| East | 10,600 | 21,400 | 37,500 | 69,500 |
| North | 19,400 | 73,400 | 26,500 | 119,300 |
| South | 10,000 | 28,700 | 43,800 | 82,500 |
| West | 37,500 | 18,800 | 18,600 | 74,900 |
| **Grand Total** | **77,500** | **142,300** | **126,400** | **346,200** |

## 4. Dashboard Layout

The dashboard is designed from top to bottom in the following order:

1. KPI cards: Total Revenue and Total Units Sold.
2. Category filter directly below the KPI cards in the top band.
3. Revenue Trend by Month and Category.
4. Revenue by Region and Revenue by Category comparison charts.
5. Region x Category Detail text table.

**Containers:** Use a vertical container for the overall dashboard. Place the two KPI cards in a horizontal container. Place the category filter in the top band directly below the KPI container. Use a horizontal container for the two comparison charts, with the monthly trend above them and the detail table at the bottom.

**Category filter:** Add `category` as a filter and display it in the top band. Apply the filter to all four worksheets that use this data source.

**Use as Filter behaviour:** When a user clicks a bar in Revenue by Region with *Use as Filter* enabled, the other charts and the detail table filter to show the selected region's data, while respecting the active category filter.

## 5. Insight and Recommendation Narrative

### 5.1 Visualization summary

The dashboard summarizes completed-order revenue and units sold, compares revenue across regions and product categories, tracks category revenue by month, and provides a detailed region-category breakdown. Total completed-order revenue is ₹346,200 across 63 orders, with 106 units sold.

### 5.2 Summary analysis

1. **Regional performance:** North generated the highest revenue at ₹119,300, compared with East at ₹69,500. North contributed ₹49,800 more revenue than East.

2. **Category performance:** Electronics generated the highest category revenue at ₹142,300, followed by Home at ₹126,400 and Apparel at ₹77,500. Electronics exceeded Apparel by ₹64,800.

3. **Monthly change:** Total revenue increased from ₹93,100 in October to ₹154,800 in November, an increase of ₹61,700. Home category revenue rose from ₹12,600 in October to ₹83,200 in November, making it the largest contributor to the overall monthly increase.

4. **Regional category mix:** North generated ₹73,400 from Electronics, while West generated ₹37,500 from Apparel. This indicates that the leading category differs between these regions.

### 5.3 Recommendations

1. **North — Electronics promotion:** North generated ₹73,400 in Electronics revenue, the largest region-category combination. Run a targeted Electronics promotion in North and monitor Electronics revenue and completed orders before and after the campaign.

2. **West — Apparel inventory planning:** West generated ₹37,500 in Apparel revenue, the highest Apparel revenue among the regions. Review stock availability and consider prioritizing popular Apparel products for West. Monitor Apparel revenue, units sold, and stockouts to assess the result.

3. **Home category — November demand planning:** Home revenue increased from ₹12,600 in October to ₹83,200 in November. Review the products and orders behind this increase, plan inventory according to confirmed demand, and monitor monthly Home revenue, units sold, and unsold inventory to determine whether the trend continues.

## 6. Reconciliation

All four revenue totals must agree.

| Reconciliation Item | Revenue (INR) |
|---|---:|
| Total Revenue KPI | 346,200 |
| Sum of Revenue by Region | 346,200 |
| Sum of Revenue by Category | 346,200 |
| Part B Pivot Grand Total | 346,200 |
| **Reconciliation Status** | **MATCH** |

The dashboard revenue figures reconcile to Part B's pivot grand total and Part A's Q05 total revenue of ₹346,200.
