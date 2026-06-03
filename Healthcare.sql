#create database Healthcare;
use Healthcare;

select * from healthcare_data limit 10;

# Which medical conditions generate the highest treatment costs 
select medical_condition , round(sum(billing_amount),2) as Total_cost from healthcare_data
group by medical_condition
ORDER BY total_cost desc;

# Patient & Disease Analysis

# Which medical conditions are most common?

select medical_condition , count(*) as Patient_count from healthcare_data
group by Medical_Condition
ORDER BY count(*) desc;

# Which age groups are most affected by critical diseases?

select age_group , count(*)as Critical_cases from healthcare_data where risk_category = 'critical'
group by age_group
ORDER BY count(*) desc;

# Is there any gender-based trend in diseases?

select Medical_Condition, gender, count(*) as Patient_Count from healthcare_data
WHERE risk_category = 'critical'
group by gender, Medical_Condition
ORDER BY Medical_Condition, count(*) desc;

# Cost & Revenue Analysis

# Which medical conditions have the highest average billing amount?
select hospital , round(avg(billing_amount),2) as avg_billing from healthcare_data
GROUP BY Hospital
ORDER BY round(avg(billing_amount),2) desc;

# Which hospitals generate the highest healthcare revenue?

select hospital , round(sum(billing_amount),2) as Total_Revenue from healthcare_data
GROUP BY Hospital
ORDER BY Total_Revenue desc;

# Which insurance providers cover the most expensive treatments?

select insurance_provider , medical_condition , round(sum(billing_amount),2) as Total_expense
from healthcare_data
group by insurance_provider , medical_condition
ORDER BY Total_expense desc;

# Hospital Operations Analysis

# Which admission type leads to the longest hospital stay?

SELECT 
    admission_type,
    ROUND(AVG(length_of_stay),2) AS avg_stay_days
FROM healthcare_data
GROUP BY admission_type
ORDER BY avg_stay_days DESC;

# Which hospitals experience the highest emergency admissions?

SELECT 
    hospital,
    COUNT(*) AS emergency_cases
FROM healthcare_data
WHERE admission_type = 'Emergency'
GROUP BY hospital
ORDER BY emergency_cases DESC;

# What factors increase patient length of stay?

SELECT 
    medical_condition,
    admission_type,
   risk_category,
    ROUND(AVG(length_of_stay),2) AS avg_length_of_stay
FROM healthcare_data
GROUP BY medical_condition, admission_type, risk_category
ORDER BY avg_length_of_stay DESC;

# Quality of Care Analysis

# Which medications are associated with better test results?

SELECT 
    medication,
    test_results,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY medication, test_results
ORDER BY medication, patient_count DESC;

# Which conditions frequently return abnormal test results?

SELECT 
    medical_condition,
    COUNT(*) AS abnormal_cases
FROM healthcare_data
WHERE test_results = 'Abnormal'
GROUP BY medical_condition
ORDER BY abnormal_cases DESC;

# Are some hospitals showing higher inconclusive test outcomes?

SELECT 
    hospital,
    COUNT(*) AS inconclusive_cases
FROM healthcare_data
WHERE test_results = 'Inconclusive'
GROUP BY hospital
ORDER BY inconclusive_cases DESC;


# KPIS :

# Average Billing Amount

select round(avg(billing_amount),2) as Average_billing_amount
 from healthcare_data;

# Average Length of Stay

select round(avg(Length_of_Stay),2) as Average_length_of_stay
from healthcare_data;

# Emergency Admission Rate

select concat(round(sum(case 
when Admission_Type = 'Emergency' then 1 else 0 end)/count(*)*100,2),' %') as Emergency_Admission_Rate
from healthcare_data;

# Patient Count by Condition

select medical_condition , count(*) as patient_count from healthcare_data
GROUP BY medical_condition
ORDER BY patient_count desc;

# Hospital Occupancy Trend

SELECT
    YEAR(date_of_admission) AS year,
    MONTHNAME(date_of_admission) AS month_name,
    COUNT(*) AS Occupancy
FROM healthcare_data
GROUP BY
    YEAR(date_of_admission),
    MONTH(date_of_admission),
    MONTHNAME(date_of_admission)
ORDER BY
    YEAR(date_of_admission),
    MONTH(date_of_admission);


# Abnormal Test Result %

select concat(round(sum(case
when Test_Results = 'Abnormal' then 1 else 0 end)/count(*),2)*100 , ' %')
 as Abnormal_Test_Result_Rate
from healthcare_data ;

# Revenue by Hospital

select concat(round(sum(billing_amount)/1000000,2),'  M') as Total_Revenue
from healthcare_data;

# Insurance-wise Treatment Cost

select insurance_provider , concat(round(sum(billing_amount)/1000000,2),'  M') as Treatment_cost
from healthcare_data
GROUP BY insurance_provider
ORDER BY Treatment_cost ;


