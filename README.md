# COVID-19 Data Analysis using SQL
## Project Overview

This project analyzes global COVID-19 data using MySQL to generate meaningful insights about confirmed cases, recoveries, deaths, and active cases across different countries.

The project demonstrates SQL skills required for Data Analyst roles, including filtering, aggregation, subqueries, window functions, views, and stored procedures.

---

## Objectives

- Analyze COVID-19 cases across countries
- Calculate Death Rate
- Calculate Recovery Rate
- Calculate Active Cases
- Identify countries with highest confirmed cases
- Identify countries with highest deaths
- Rank countries using SQL Window Functions
- Create reusable SQL Views
- Create Stored Procedures

---

## Technologies Used

- MySQL Server
- MySQL Workbench
- SQL

---

## Dataset

Dataset Source:
Kaggle COVID-19 Dataset

Columns Used

- country
- code
- confirmed
- recovered
- critical
- deaths
- lastChange
- lastUpdate

---

## Database

Database Name

covid_analysis

Table Name

covid_dataset

---

## SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- LIMIT
- Aggregate Functions
- GROUP BY
- HAVING
- Subqueries
- Views
- Stored Procedures
- Window Functions
    - RANK()
    - DENSE_RANK()
    - ROW_NUMBER()
    - NTILE()

---

## Business Questions Solved

### Basic Analysis

@View Complete Dataset

@Total Number of Countries

@Top 10 Countries by Confirmed Cases

@Top 10 Countries by Deaths

@Top 10 Countries by Recoveries

@Countries with Highest Critical Cases

---

### KPI Analysis

@Death Rate

@Recovery Rate

@Active Cases

@Worldwide Confirmed Cases

@Worldwide Deaths

@Worldwide Recoveries

---

### Filtering

@Countries having more than 1 Million Cases

@Countries having more than 50,000 Deaths

@Countries with Zero Critical Cases

@Countries starting with letter A

@Search for India

---

### Window Functions

@Rank Countries

@Dense Rank

@Row Number


---

### Advanced SQL

@Views

@Stored Procedures

@Subqueries

---

## Sample SQL Query

```sql
SELECT
country,
confirmed,
deaths,
ROUND((deaths/confirmed)*100,2) AS DeathRate
FROM covid_dataset
ORDER BY DeathRate DESC;
```

---

## Sample Output

| Country | Confirmed | Deaths | Death Rate |
|----------|-----------|---------|------------|
| Country A | 500000 | 25000 | 5.00% |

---

## Project Highlights

- Imported CSV dataset into MySQL
- Performed data exploration
- Calculated important COVID-19 metrics
- Used SQL Window Functions for ranking
- Built reusable Views
- Created Stored Procedures
- Answered 30+ analytical business questions

---

## Skills Demonstrated

- SQL
- Data Cleaning
- Data Exploration
- Data Analysis
- Window Functions
- Views
- Stored Procedures
- Business Analytics

---

## Future Improvements

- Power BI Dashboard
- Tableau Dashboard
- Time Series Analysis
- Vaccination Analysis
- Monthly Trend Analysis

---

## Author

N Preethika 
