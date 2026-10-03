# India Tech Job Market Analysis

## Skills, Salaries & Hiring Competition | 2024–2026

An end-to-end data analytics project analyzing the Indian technology job market using **Python, SQL, and Power BI**.

The project focuses on job demand, technical skills, salary patterns, career progression, and hiring competition, with additional analysis specifically focused on **Data Analyst roles**.

---

## Project Overview

The objective of this project is to analyze technology job-market data and identify useful patterns across:

- Job roles and industries
- Technical skill demand
- Experience levels
- Salary ranges
- Cities and work modes
- Job types
- Applicant competition
- Data Analyst career requirements

The analysis combines **Python-based data analysis, SQL querying, and an interactive Power BI dashboard**.

---

## Dataset

- **Records:** 5,000 job postings
- **Time period:** 2024–2026
- **Source:** Public Kaggle dataset
- **Original columns:** 17
- **Skills analyzed:** 109 unique skill labels

### Main Dataset Fields

- Job ID
- Job Title
- Company
- Company Type
- Industry
- City
- Location Tier
- Experience Level
- Job Type
- Work Mode
- Salary (LPA)
- Skills Required
- Education Required
- Openings
- Applicants
- Company Rating
- Date Posted

---

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning, analysis and exploration |
| Pandas | Data manipulation |
| Jupyter Notebook | Analysis workflow |
| MySQL | SQL-based analysis |
| Power BI | Interactive dashboard and visualization |
| Git & GitHub | Version control and project sharing |

---

## Project Workflow

### 1. Data Inspection

The dataset was inspected for:

- Missing values
- Duplicate records
- Duplicate Job IDs
- Data types
- Date ranges
- Salary ranges
- Skill information
- Numerical distributions

### 2. Data Cleaning

The data-cleaning process included:

- Checking missing values
- Checking duplicate records
- Creating derived analytical fields
- Calculating applicants per opening
- Identifying salary anomaly records
- Preparing the cleaned dataset for SQL and Power BI

### 3. Python Analysis

Python and Pandas were used to analyze:

- Job-market distribution
- Experience levels
- Work modes
- Job types
- Industries
- Skill demand
- Data Analyst skills
- Salary patterns
- Skill combinations

### 4. SQL Analysis

MySQL was used to perform structured analysis including:

- Total jobs and openings
- Jobs by city and experience
- Jobs by work mode and job type
- Popular job titles
- Industries and companies
- Salary by experience, city and work mode
- Highest-paying job titles
- Applicant competition
- Monthly job-posting trends
- Salary anomaly records

### 5. Power BI Dashboard

An interactive four-page Power BI dashboard was created.

---

# Power BI Dashboard

## 1. Executive Overview

Provides a high-level view of the technology job market.

Includes:

- Total Jobs
- Total Openings
- Average Applicants per Opening
- Average Applicants
- Average Salary
- Jobs by Experience Level
- Jobs by Industry
- Job Postings by City
- Jobs by Work Mode

---

## 2. Skills Intelligence

Focuses on technical skill demand and Data Analyst skills.

Includes:

- Top 10 Most Demanded Skills
- Skill Demand by Experience Level
- Most Common Skill Combinations
- Top Skills for Data Analyst Roles
- Top Skills by Average Salary
- Total Skills Tracked
- Top Skill Demand

---

## 3. Salary & Career

Examines salary patterns across career stages and job-market segments.

Includes:

- Average Salary by Experience Level
- Average Salary by City
- Data Analyst Salary by Experience Level
- Top 10 Highest-Paying Job Titles
- Average Salary by Work Mode

Salary values are presented in **LPA (Lakhs Per Annum)**.

---

## 4. Competition Analysis

Analyzes applicant pressure and hiring competition.

Includes:

- Applicants vs Openings
- Average Competition by Work Mode
- Data Analyst Competition by Experience
- Average Competition by Experience Level
- Most Competitive Job Postings

Competition is measured using:

**Applicants per Opening = Applicants / Openings**

---

# Key Findings

The analysis identified several notable patterns in the dataset.

### Job Market

- The dataset contains **5,000 job postings**.
- There are **18,213 total openings**.
- Average applicants per opening is approximately **82.77**.
- Average applicants per job posting is approximately **302.07**.

### Experience

The dataset contains postings across five experience levels:

- Fresher
- Junior
- Mid
- Senior
- Lead

Average salary increases across these experience categories, with the highest average salary associated with Lead-level postings in this dataset.

### Skill Demand

**Python** is the most frequently occurring skill in the analyzed dataset, appearing in **1,579 job postings**.

Other frequently occurring skills include:

- REST APIs
- AWS
- SQL
- Docker
- Java
- PostgreSQL
- React
- TypeScript
- Agile
- JavaScript

### Data Analyst Roles

The Data Analyst-focused analysis identifies skills including:

- Data Visualization
- Power BI
- Statistics
- SQL
- Tableau
- Excel
- Python

### Competition

Applicant competition was analyzed using the **Applicants per Opening** metric.

The analysis compares competition across:

- Experience levels
- Work modes
- Individual job postings
- Data Analyst roles

---

# Project Structure

```text
India_Tech_Job_Market_Analysis/
│
├── India_Tech_Job_Market_Analysis.pbix
│
├── india_job_market_2024_2026.csv
├── india_job_market_2024_2026_cleaned.csv
│
├── India_Tech_Job_Market_Step2_Inspection.ipynb
├── India_Tech_Job_Market_Step3_Cleaning.ipynb
├── India_Tech_Job_Market_Step5_Skills_Analysis.ipynb
├── India_Tech_Job_Market_Step6_Data_Analyst_Analysis.ipynb
│
├── India_Tech_Job_Market_Step4_SQL_Analysis.sql
│
├── step5_*.csv
├── step6_*.csv
│
├── README.md
└── .gitignore