# Healthcare-Data-Analysis
Healthcare analytics dashboard project featuring data cleaning in Python, SQL-based business analysis, and interactive Power BI visualizations for patient, revenue, and hospital performance insights.

🏥 Healthcare Data Analysis Project
📌 Project Overview
This project focuses on analyzing healthcare data to uncover insights related to patient demographics, disease prevalence, hospital operations, treatment costs, insurance coverage, and healthcare quality.
The dataset was cleaned and transformed using Python (Pandas), analyzed using SQL (MySQL), and visualized through an interactive Power BI dashboard.
________________________________________
🎯 Business Problem
Healthcare organizations generate large amounts of patient and operational data. However, without proper analysis, it is difficult to answer critical business questions such as:
•	Which diseases are most common among patients?
•	Which age groups are most affected by critical illnesses?
•	Which hospitals generate the highest revenue?
•	What factors contribute to longer hospital stays?
•	Which insurance providers cover expensive treatments?
•	How effective are medications based on test results?
The objective of this project is to transform raw healthcare data into actionable business insights for healthcare administrators and decision-makers.
________________________________________
🛠 Tools & Technologies
Tool	Purpose
Python (Pandas)	Data Cleaning & Transformation
Jupyter Notebook	Data Exploration
MySQL	Data Storage & Analysis
SQL	Business Querying
Power BI	Dashboard Development
Excel/CSV	Data Source
________________________________________
📂 Dataset Information
The dataset contains healthcare-related information including:
•	Patient Name
•	Age
•	Gender
•	Medical Condition
•	Doctor
•	Hospital
•	Admission Date
•	Discharge Date
•	Admission Type
•	Insurance Provider
•	Medication
•	Billing Amount
•	Test Results
________________________________________
🧹 Data Cleaning & Preparation
The following cleaning steps were performed in Python:
Date Conversion
Converted admission and discharge dates into SQL-compatible date format.
Column Renaming
Standardized column names by:
•	Converting spaces to underscores
•	Using lowercase naming conventions
Example:
df.columns = df.columns.str.replace(' ','_')
Medical Condition Standardization
Example:
Alzheimer's → Alzheimer
Disease Risk Categorization
Created a new column:
disease_risk_category
Categories:
Disease	Risk Category
Cancer	Critical
Heart Disease	Critical
Alzheimer	Critical
Diabetes	High Risk
Obesity	High Risk
Asthma	High Risk
Others	Low Risk
Age Group Segmentation
Created a new column:
age_group
Age Range	Group
0-18	Child
19-35	Young Adult
36-50	Adult
51-65	Senior Adult
66+	Elderly
________________________________________
🗄 Database Design
Database: Healthcare_DB
Table:
healthcare_data
Data was imported into MySQL using:
df.to_sql()
________________________________________
📊 Key Performance Indicators (KPIs)
Total Patients
Total number of patients admitted.
Total Revenue
Sum of all billing amounts.
Average Billing Amount
Average treatment cost per patient.
Average Length of Stay
Average hospital stay duration.
Emergency Admission Rate
Percentage of emergency admissions.
Abnormal Test Result %
Percentage of abnormal medical test results.
Total Critical Cases
Total patients categorized as critical.
________________________________________
📈 Business Questions Answered
Patient & Disease Analysis
Which medical conditions are most common?
Analyzed disease frequency across all patients.
Which age groups are most affected by critical diseases?
Compared age groups against disease severity categories.
Is there a gender-based trend in diseases?
Examined disease distribution by gender.
________________________________________
Cost & Revenue Analysis
Which medical conditions have the highest average billing amount?
Identified expensive treatments.
Which hospitals generate the highest revenue?
Calculated total revenue by hospital.
Which insurance providers cover the most expensive treatments?
Compared treatment costs by insurance provider.
________________________________________
Hospital Operations Analysis
Which admission type leads to the longest hospital stay?
Analyzed length of stay by admission type.
Which hospitals experience the highest emergency admissions?
Measured emergency admission counts by hospital.
What factors increase patient length of stay?
Compared disease type, admission type, and risk category.
________________________________________
Quality of Care Analysis
Which medications are associated with better test outcomes?
Compared medications against test results.
Which conditions frequently return abnormal results?
Measured abnormal test rates by disease.
Which hospitals show higher inconclusive test outcomes?
Analyzed healthcare quality indicators.
________________________________________
📊 Power BI Dashboard
Dashboard 1: Executive Summary
KPI Cards
•	Total Patients
•	Total Revenue
•	Average Billing Amount
•	Average Length of Stay
•	Emergency Admission Rate
•	Abnormal Test Result %
Visualizations
•	Revenue by Hospital
•	Patient Count by Disease
•	Disease Risk Distribution
•	Admission Trend Analysis
________________________________________
Dashboard 2: Patient & Clinical Analysis
Visualizations
•	Age Group Distribution
•	Gender vs Disease Analysis
•	Critical Disease Analysis
•	Test Result Distribution
•	Critical Cases vs Average Billing Amount
________________________________________
Dashboard 3: Hospital Performance
Visualizations
•	Revenue by Hospital
•	Emergency Admissions by Hospital
•	Average Stay Duration
•	Insurance-wise Treatment Cost
•	Medication Effectiveness Analysis
________________________________________
📌 Key Insights
Patient Analysis
•	Critical diseases contribute significantly to healthcare burden.
•	Elderly patients show higher incidence of critical illnesses.
Revenue Analysis
•	A small number of diseases generate a large percentage of revenue.
•	Certain hospitals consistently outperform others in revenue generation.
Hospital Operations
•	Emergency admissions lead to longer hospital stays.
•	Specific hospitals handle a higher volume of emergency cases.
Quality Analysis
•	Certain diseases produce a higher percentage of abnormal test results.
•	Medication effectiveness varies significantly across conditions.
________________________________________
📈 Future Enhancements
•	Predict patient length of stay using Machine Learning.
•	Predict hospital revenue trends.
•	Build disease risk prediction models.
•	Implement patient readmission analysis.
•	Create real-time healthcare monitoring dashboards.
________________________________________
👨‍💻 Author
Healthcare Data Analysis Project
Tools Used: Python | MySQL | Power BI | SQL | Jupyter Notebook
This project demonstrates end-to-end data analytics skills including data cleaning, SQL querying, KPI development, business analysis, and dashboard creation.
