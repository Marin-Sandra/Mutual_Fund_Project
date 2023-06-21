
select * FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 

-- Average returns of each schema from the past years
with ag as (
select [scheme_name], returns_1yr as r
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
UNION ALL
select [scheme_name], returns_3yr as r
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
UNION ALL
select [scheme_name], returns_5yr as r
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
)
select ag.[scheme_name],AVG(r) as avg_returns from ag group by ag.[scheme_name]
order by 2

-- Expense_ratio of each Schema based on catogery
select scheme_name,expense_ratio,category
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
group by category,expense_ratio,scheme_name
order by category,expense_ratio

-- Risk of each Schema based on catogery
select scheme_name,risk_level,category 
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
group by category,risk_level,scheme_name
order by category,risk_level

-- Retirement Funds
select scheme_name,expense_ratio,risk_level,returns_1yr,returns_3yr,returns_5yr
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
where scheme_name like '%retirement%'

--Quant Funds
select * 
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
where [scheme_name] like '%Quant %'


with ag as (
select [scheme_name],expense_ratio,risk_level,category, returns_1yr as r
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
UNION ALL
select [scheme_name],expense_ratio,risk_level,category, returns_3yr as r
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
UNION ALL
select [scheme_name],expense_ratio,risk_level,category, returns_5yr as r
FROM [ProjectPortfolio].[dbo].[mutual_funds_data] 
)
select ag.[scheme_name],expense_ratio,risk_level,category,AVG(r) as avg_returns from ag 
where ag.[scheme_name] like '%Quant %'
group by ag.[scheme_name],expense_ratio,risk_level,category
order by 5

