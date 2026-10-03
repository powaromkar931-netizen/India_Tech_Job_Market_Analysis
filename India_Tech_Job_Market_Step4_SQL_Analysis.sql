-- India Tech Job Market Analysis
-- Step 4: SQL Analysis
-- Run the CREATE DATABASE and CREATE TABLE sections first.
-- Then import the cleaned CSV using MySQL Workbench's Table Data Import Wizard
-- (recommended for Windows beginners). After import, run the analysis queries.

CREATE DATABASE IF NOT EXISTS india_tech_job_market;
USE india_tech_job_market;

DROP TABLE IF EXISTS tech_jobs;

CREATE TABLE tech_jobs (
    Job_ID VARCHAR(30) PRIMARY KEY,
    Job_Title VARCHAR(100),
    Company VARCHAR(150),
    Company_Type VARCHAR(50),
    Industry VARCHAR(100),
    City VARCHAR(100),
    Location_Tier VARCHAR(20),
    Experience_Level VARCHAR(50),
    Job_Type VARCHAR(50),
    Work_Mode VARCHAR(30),
    Salary_LPA DECIMAL(10,2),
    Skills_Required TEXT,
    Education_Required VARCHAR(100),
    Openings INT,
    Applicants INT,
    Company_Rating DECIMAL(3,2),
    Date_Posted DATE,
    Applicants_per_Opening DECIMAL(10,2),
    Year INT,
    Month INT,
    Year_Month VARCHAR(7),
    Skill_Count INT,
    Salary_Anomaly_Flag BOOLEAN
);

-- ============================================================
-- BASIC CHECKS
-- ============================================================

-- 1. Total number of job records
SELECT COUNT(*) AS total_jobs
FROM tech_jobs;

-- 2. Total openings
SELECT SUM(Openings) AS total_openings
FROM tech_jobs;

-- 3. Average salary
SELECT ROUND(AVG(Salary_LPA), 2) AS average_salary_lpa
FROM tech_jobs;

-- 4. Average applicants per job
SELECT ROUND(AVG(Applicants), 2) AS average_applicants
FROM tech_jobs;

-- ============================================================
-- JOB MARKET ANALYSIS
-- ============================================================

-- 5. Number of jobs by city
SELECT City, COUNT(*) AS job_count
FROM tech_jobs
GROUP BY City
ORDER BY job_count DESC;

-- 6. Number of jobs by experience level
SELECT Experience_Level, COUNT(*) AS job_count
FROM tech_jobs
GROUP BY Experience_Level
ORDER BY job_count DESC;

-- 7. Number of jobs by work mode
SELECT Work_Mode, COUNT(*) AS job_count
FROM tech_jobs
GROUP BY Work_Mode
ORDER BY job_count DESC;

-- 8. Number of jobs by job type
SELECT Job_Type, COUNT(*) AS job_count
FROM tech_jobs
GROUP BY Job_Type
ORDER BY job_count DESC;

-- 9. Most common job titles
SELECT Job_Title, COUNT(*) AS job_count
FROM tech_jobs
GROUP BY Job_Title
ORDER BY job_count DESC
LIMIT 10;

-- 10. Industries with the most jobs
SELECT Industry, COUNT(*) AS job_count
FROM tech_jobs
GROUP BY Industry
ORDER BY job_count DESC;

-- 11. Companies with the most total openings
SELECT Company, SUM(Openings) AS total_openings
FROM tech_jobs
GROUP BY Company
ORDER BY total_openings DESC
LIMIT 10;

-- ============================================================
-- SALARY ANALYSIS
-- ============================================================

-- 12. Average salary by experience level
SELECT
    Experience_Level,
    ROUND(AVG(Salary_LPA), 2) AS avg_salary_lpa
FROM tech_jobs
GROUP BY Experience_Level
ORDER BY avg_salary_lpa DESC;

-- 13. Highest-paying job titles by average salary
SELECT
    Job_Title,
    COUNT(*) AS job_count,
    ROUND(AVG(Salary_LPA), 2) AS avg_salary_lpa
FROM tech_jobs
GROUP BY Job_Title
HAVING COUNT(*) >= 20
ORDER BY avg_salary_lpa DESC
LIMIT 10;

-- 14. Average salary by work mode
SELECT
    Work_Mode,
    ROUND(AVG(Salary_LPA), 2) AS avg_salary_lpa
FROM tech_jobs
GROUP BY Work_Mode
ORDER BY avg_salary_lpa DESC;

-- 15. Average salary by city
SELECT
    City,
    COUNT(*) AS job_count,
    ROUND(AVG(Salary_LPA), 2) AS avg_salary_lpa
FROM tech_jobs
GROUP BY City
HAVING COUNT(*) >= 20
ORDER BY avg_salary_lpa DESC;

-- ============================================================
-- COMPETITION ANALYSIS
-- ============================================================

-- 16. Most competitive job postings by applicants per opening
SELECT
    Job_ID,
    Job_Title,
    Company,
    City,
    Openings,
    Applicants,
    ROUND(Applicants_per_Opening, 2) AS applicants_per_opening
FROM tech_jobs
ORDER BY Applicants_per_Opening DESC
LIMIT 10;

-- 17. Average competition by experience level
SELECT
    Experience_Level,
    ROUND(AVG(Applicants_per_Opening), 2) AS avg_applicants_per_opening
FROM tech_jobs
GROUP BY Experience_Level
ORDER BY avg_applicants_per_opening DESC;

-- 18. Competition by work mode
SELECT
    Work_Mode,
    ROUND(AVG(Applicants_per_Opening), 2) AS avg_applicants_per_opening
FROM tech_jobs
GROUP BY Work_Mode
ORDER BY avg_applicants_per_opening DESC;

-- ============================================================
-- DATA QUALITY / PROJECT DOCUMENTATION
-- ============================================================

-- 19. Salary anomaly records flagged during Python cleaning
SELECT
    Job_ID,
    Job_Title,
    Experience_Level,
    Salary_LPA,
    Company
FROM tech_jobs
WHERE Salary_Anomaly_Flag = TRUE
ORDER BY Salary_LPA;

-- 20. Monthly job-posting trend
SELECT
    Year_Month,
    COUNT(*) AS job_count
FROM tech_jobs
GROUP BY Year_Month
ORDER BY Year_Month;
