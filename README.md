# Retail_Sales_Insights_Python_SQL


## **Overview**  
This project provides an in-depth analysis of e-commerce sales data using **Python for data cleaning** and **MySQL for data analysis**. The objective is to uncover **key business insights** related to **sales performance, customer trends, and operational efficiency**.  

Through structured **ETL (Extract, Transform, Load) processes**, this project enables **data-driven decision-making** for optimizing product sales, improving customer segmentation, and enhancing logistical efficiency.  

---

## **Dataset**  
- The dataset includes **order transactions, customer demographics, product categories, pricing, and shipping details**.  
- [`Dataset`](https://github.com/Saher-Younas/Retail_Sales_Insights_Python_SQL/blob/main/retail_sales_dataset.csv)

---

## **Project Workflow**  

### **1. Data Cleaning & Preprocessing (Python + Jupyter Notebook)**  
[`Python_Data_Analysis`](https://github.com/Saher-Younas/Retail_Sales_Insights_Python_SQL/blob/main/retail_sales_python.ipynb)
Before performing any analysis, the dataset underwent extensive cleaning in **Python** to ensure data integrity and accuracy. Key steps included: 

- **Loading the dataset** using `pandas`  
- **Handling missing values** through appropriate imputation techniques  
- **Detecting and removing duplicate records**  
- **Standardizing data formats** (date-time conversion, currency normalization, categorical encoding)  
- **Fixing data inconsistencies** (standardizing category names, ensuring numerical consistency)  
- **Handling outliers** to remove extreme values that could skew analysis  
- **Exporting the cleaned dataset** as a CSV file for MySQL processing  

---

### **2. Connecting Python to MySQL & Loading Data**  
The cleaned dataset was transferred to **MySQL** for efficient querying and analysis.  

#### **Steps Followed:**  
- **Established a connection** to MySQL using the `MySQL Connector` library in Python.  
- **Created a database and tables** in MySQL to store the structured dataset.  
- **Loaded the dataset into MySQL** using the `LOAD DATA INFILE` and `INSERT INTO` methods.  
- **Performed basic exploratory data analysis (EDA)** using SQL queries to validate the integrity of the uploaded data.  

---

## **3. SQL Data Analysis & Business Insights**  
[`SQL_Data_Analysis`](https://github.com/Saher-Younas/Retail_Sales_Insights_Python_SQL/blob/main/retail_sales_SQL.sql)
Using **SQL queries**, key **business and operational insights** were derived from the dataset. The analysis was structured around the following categories:  

### **A. Sales Performance Analysis**  
- **Top 10 Highest Revenue-Generating Products**  
  Identified the products contributing the most to total revenue.  

- **Top 5 Best-Selling Products in Each Region**  
  Used **window functions** to rank products within each region.  

- **Month-over-Month Sales Growth (2022 vs. 2023)**  
  Compared sales performance across months for two consecutive years to identify seasonal trends.  

- **Best-Selling Product Categories Per Month**  
  Determined which product categories had the highest sales for each month.  

- **Fastest-Growing Subcategory by Profit (2023 vs. 2022)**  
  Measured year-over-year profit growth across different subcategories.  

- **Best-Selling Products by Quantity Sold**  
  Ranked products based on total units sold to assess demand.  

---

### **B. Customer & Regional Insights**  
- **Region-Wise Revenue Contribution**  
  Identified high-revenue regions to understand geographical sales trends.  

- **Customer Segmentation by Spending Behavior**  
  Categorized customers into **high-value, mid-tier, and low-value segments** based on their total spending.  

---

### **C. Operational Insights**  
- **Effect of Discounts on Sales Volume**  
  Analyzed how different discount levels impacted **order volume and total sales**.  

- **Fastest & Slowest Shipping Modes**  
  Evaluated **average delivery times** for each shipping method to optimize logistics.  

---

## **4. Key Findings & Business Impact**  

- **High-Revenue Products Drive Business Growth**  
  The top 10 products accounted for a significant portion of total sales, emphasizing the importance of **strategic inventory planning**.  

- **Regional Sales Insights Enable Better Market Strategy**  
  Certain regions contributed disproportionately to revenue, suggesting a need for **regionalized marketing efforts**.  

- **Seasonality & Month-over-Month Sales Trends**  
  Sales peaked during specific months, indicating potential for **seasonal promotions**.  

- **Customer Segmentation Helps Personalization**  
  High-value customers represented a small percentage but contributed significantly to total revenue, making **loyalty programs and targeted promotions** essential.  

- **Shipping & Discount Optimization Can Improve Profit Margins**  
  Discounts boosted sales volume but also reduced margins, necessitating a **data-driven pricing strategy**.  
  Certain shipping methods had significantly slower delivery times, impacting **customer satisfaction and retention**.  

---

## **5. Skills Demonstrated**  
This project showcases expertise in:  

- **Data Cleaning & Preprocessing** – Handling raw data effectively using Python  
- **SQL for Data Analysis** – Writing complex SQL queries for actionable insights  
- **ETL Processes** – Transferring data between different tools (Python to MySQL)  
- **Business Intelligence** – Deriving **revenue, customer, and operational insights**  
- **Data-Driven Decision Making** – Presenting findings that directly impact business strategies  

---

## **6. Conclusion**  
This project highlights how **Python and SQL** can be combined for **real-world data analysis and business intelligence**. It effectively translates raw data into **actionable insights** that drive strategic business decisions.  

This structured approach not only enhances **analytical skills** but also provides a **strong portfolio piece** for anyone interested in **data analytics, business intelligence, or data science roles**.  

