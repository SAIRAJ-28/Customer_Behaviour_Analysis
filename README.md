                    Customer Shopping Behavior Analysis

An end-to-end Data Analytics project that explores customer purchasing patterns, product category performance, seasonal spending, customer segments, discount usage, and customer satisfaction using MS Excel, Python, MySQL, and Power BI.

## Project Overview

Understanding customer shopping behavior helps businesses make informed decisions about product assortment, marketing campaigns, promotions, and customer engagement.

In this project, I analyzed customer shopping data using Python for data preparation, SQL for business analysis, and Power BI to build an interactive dashboard that presents key performance indicators and purchasing trends.

## Dashboard

The dashboard provides an overview of customer purchase activity, category contribution, seasonal spending, customer segments, product ratings, discount usage, and purchase amounts by gender.

## Project Objectives

- Analyze overall customer purchasing behavior and spending patterns.
- Identify the product categories contributing most to purchase revenue.
- Compare purchasing patterns across genders and age groups.
- Evaluate seasonal spending and discount usage.
- Examine product ratings and identify highly and poorly rated products.
- Compare purchase behavior by subscription status and shipping type.
- Build an interactive Power BI dashboard to communicate findings.

## Tools and Technologies
MS Excel - Dataset storage 
Python - Data inspection, preparation, and feature engineering 
Pandas - Data manipulation and analysis 
Jupyter Notebook - Executing and documenting the Python workflow 
SQL - Business queries, aggregations, and comparisons 
MySQL - Storing and querying customer data 
Power BI - Interactive dashboard and KPI visualization 
CSV - Data exchange 


## Dataset Description

The dataset contains "3,900" customer purchase records and 19 columns 
covering customer demographics, product information, purchasing behavior, discounts, subscriptions, shipping, and ratings.

Important columns include:

- `customer_id` — Customer identifier
- `age`, `gender`, `age_group` — Customer demographics
- `item_purchased`, `category`, `size`, `color` — Product details
- `purchase_amount` — Purchase amount in USD
- `season` — Season associated with the purchase
- `review_rating` — Customer product rating
- `subscription_status` — Subscription indicator
- `shipping_type` — Shipping method
- `discount_applied` — Discount usage indicator
- `previous_purchases` — Previous purchase count
- `payment_method` — Payment method
- `frequency_of_purchases`, `purchase_frequency_days` — Purchase frequency information

## Project Workflow

### 1. Data Preparation Using Python

The Jupyter Notebook documents the data preparation workflow using Pandas.

Key operations include:

- Loading and inspecting the dataset.
- Reviewing data types and summary statistics.
- Checking for missing values.
- Demonstrating median-based imputation of missing review ratings by product category.
- Standardizing column names using snake_case.
- Creating age groups using age quantiles.
- Mapping purchase frequency categories to approximate day intervals.
- Removing the redundant `promo_code_used` column when it duplicates discount information.
- Loading the resulting DataFrame into MySQL using SQLAlchemy.

### 2. SQL Business Analysis

SQL queries analysis covers:

**Category Performance**
- Calculate total purchase amount by category.
- Measure each category's contribution to total purchase amount.
- Rank categories by purchase amount.

**Gender-Based Analysis**
- Compare customer record counts and total purchase amounts by gender.
- Calculate average purchase amounts.
- Measure each gender's contribution to total purchase amount.

**Seasonal Analysis**
- Compare average and total purchase amounts across seasons.
- Identify seasonal differences in spending.

**Discount Analysis**
- Compare purchase records, average spending, and total purchase amounts for discounted and non-discounted purchases.

**Product Ratings**
- Calculate average product ratings and purchase amounts.
- Rank products by customer rating.
- Identify lower-rated products for further investigation.

**Customer Segmentation**
- Compare purchase activity and average ratings across age groups.
- Analyze spending and previous purchases by subscription status.

**Shipping Analysis**
- Compare average purchase amount, total purchase amount, and customer ratings by shipping type.

**Purchase Frequency**
- Calculate a statistical correlation between previous purchases and purchase amount.

The SQL scripts are available in `SQL queries.sql`.

### 3. Power BI Dashboard

The Power BI dashboard presents the analysis through KPI cards, charts, and interactive slicers.

**Key Performance Indicators**
- Total Customers
- Purchase Amount
- Average Spend
- Average Ratings

**Visualizations**
- Category Contribution
- Customer Segments
- Seasonal Spending
- Product Ratings
- Discount vs Average Spend
- Purchase Amount by Gender

**Interactive Filters**

The dashboard includes filters for:
- Gender
- Season
- Category
- Age Group
- Subscription Status
- Discount Applied

These filters allow users to explore customer behavior across different segments.

## Key Findings

The following findings were calculated from the dataset.

| Metric | Result |
|---|---:|
| Customer records | 3,900 |
| Total purchase amount | ₹233,081 |
| Average purchase amount | ₹59.76 |
| Average product rating | 3.75 / 5 |
| Clothing purchase amount | ₹104,264 |
| Accessories purchase amount | ₹74,200 |
| Footwear purchase amount | ₹36,093 |
| Outerwear purchase amount | ₹18,524 |

### Business Observations

1. **Clothing leads category performance:** Clothing accounts for approximately 44.73% of the total purchase amount, making it the largest category in the dataset.

2. **Accessories rank second:** Accessories contribute approximately 31.83% of the total purchase amount.

3. **Fall has the highest average purchase amount:** The average purchase amount in Fall is ₹61.56, compared with $60.36 in Winter, ₹58.74 in Spring, and ₹58.41 in Summer.

4. **Male customers contribute a larger purchase amount:** Male customer records account for ₹157,890, compared with ₹75,191 for female customer records. This reflects the distribution of records in this dataset and should not be interpreted as a causal difference in spending behavior.

5. **Young Adults have the highest total purchase amount among age groups:** This segment contributes ₹62,143, with an average purchase amount of ₹60.45.

6. **Non-discounted purchases have a slightly higher average purchase amount:** The average is ₹60.13 for records without a discount and ₹59.28 for records with a discount. This comparison alone does not establish whether discounts increase or decrease spending.

7. **Average product ratings are relatively consistent:** The overall average rating is approximately 3.75 out of 5.

*Note: These are descriptive findings from the available records, not proof of causation or forecasts of future sales.*

## Repository Structure

```text
Customer-Shopping-Behavior-Analysis/
│
├── BI Dashboard.png
├── Customer Dataset.csv
├── Customer_Shopping_Behavior_Analysis.ipynb
├── POWER BI Dashboard.pbix
├── SQL queries.sql
└── README.md
```


## How to Explore This Project

### Step 1: Download the Repository

Clone the repository or download it as a ZIP file.

```bash
git clone https://github.com/SAIRAJ-28/Customer_Behaviour_Analysis.git
cd Customer_Behaviour_Analysis
```



### Step 2: Explore the Python Notebook

Install the required Python libraries:

```bash
pip install pandas sqlalchemy pymysql jupyter
```

Launch Jupyter Notebook:

```bash
jupyter notebook
```

Open `Customer_Shopping_Behavior_Analysis.ipynb` and review the data preparation steps.


### Step 3: Set Up MySQL

1. Create a database named `customer_behavior`.
2. Import the prepared customer data into a table named `customer`.
3. Configure your local MySQL connection.
4. Execute the queries in `SQL queries.sql`.

Ensure that the table column names match the SQL queries before running them.

### Step 4: Open the Power BI Dashboard

1. Open `POWER BI Dashboard.pbix` in Power BI Desktop.
2. If prompted, update the dataset source path.
3. Refresh the data if necessary.
4. Use the slicers and visualizations to explore purchasing patterns.

## Skills Demonstrated

- Data cleaning and preparation
- Exploratory data analysis (EDA)
- Python and Pandas
- SQL aggregations and subqueries
- MySQL database integration
- Statistical correlation
- KPI development
- Data visualization
- Power BI dashboard development
- Business insight generation
- Analytical documentation

## Conclusion

This project demonstrates an end-to-end analytics workflow, from preparing customer data with Python to querying it with SQL and communicating findings through Power BI.

It provides practical experience in data analysis, business reporting, dashboard development, and translating raw data into actionable questions for retail decision-making.

THANK YOU FOR VISITING
