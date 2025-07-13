# 💰 Mutual Funds SQL Analysis

This project explores mutual fund performance using **T-SQL queries** on a structured dataset of Indian mutual funds.
It was created as part of personal upskilling in both **data analytics** and **investment fundamentals**.


## Objective

To practice real-world SQL analysis while gaining insights into:
- Fund performance (returns across 1, 3, and 5 years)
- Risk levels by fund category
- Expense ratios and their impact
- Specific fund types like retirement or Quant funds


## Tools Used

- **Microsoft SQL Server** (SSMS)
- **T-SQL**
- GitHub (for version control & portfolio)


## Dataset Fields

The dataset includes fields such as:
- `scheme_name`  
- `category` (e.g., equity, debt, hybrid)  
- `returns_1yr`, `returns_3yr`, `returns_5yr`  
- `expense_ratio`  
- `risk_level`


## Key SQL Analyses Performed

### 1. **Average Returns per Scheme**
Used a CTE with `UNION ALL` to calculate mean performance over 1, 3, and 5 years.

### 2. Expense Ratio by Fund Category
Grouped schemes to compare cost of investment across fund types.

### 3. Risk Level Breakdown
Identified how different categories align with low, moderate, or high risk.

### 4. Thematic Fund Analysis
Queried retirement and Quant funds for return and risk comparisons.

### 5. Quant Fund Deep Dive
Combined expense ratio, risk level, and returns using a second CTE for more advanced filtering.

## Outcome
-Reinforced key SQL concepts: CTEs, aggregation, filtering, LIKE, GROUP BY, and ORDER BY
-Gained hands-on exposure to mutual fund evaluation criteria
