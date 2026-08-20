create database healthcare_analytics;
use healthcare_analytics;
CREATE TABLE healthcare_data (
    Patient_ID VARCHAR(20),
    Patient_Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(20),
    Blood_Group VARCHAR(10),
    City VARCHAR(50),
    State VARCHAR(50),
    Department VARCHAR(50),
    Doctor VARCHAR(50),
    Medical_Condition VARCHAR(50),
    Admission_Type VARCHAR(30),
    Admission_Date DATE,
    Discharge_Date DATE,
    Length_of_Stay_Days INT,
    Room_Type VARCHAR(30),
    Insurance_Type VARCHAR(50),
    Treatment_Cost DECIMAL(12,2),
    Insurance_Covered DECIMAL(12,2),
    Patient_Payment DECIMAL(12,2),
    Patient_Satisfaction DECIMAL(3,1),
    Outcome VARCHAR(30),
    Follow_Up_Required VARCHAR(10),
    Readmission_Within_30_Days VARCHAR(10),
    Age_Group VARCHAR(20),
    Admission_Year INT,
    Admission_Month INT,
    Admission_Month_Name VARCHAR(20),
    Quarter VARCHAR(5)
);

DESCRIBE healthcare_data;
select *from healthcare_data;

# Step-1 Basic KPIs
# 1.Total Patients
SELECT COUNT(DISTINCT Patient_ID) AS Total_Patients
FROM healthcare_data;

# 2.Total Admissions
SELECT COUNT(*) AS Total_Admissions
FROM healthcare_data;

# 3.Average Patient Age
SELECT ROUND(AVG(Age), 2) AS Average_Age
FROM healthcare_data;

# 4.Average Length of Stay
SELECT ROUND(AVG(Length_of_Stay_Days), 2) AS Avg_Length_of_Stay
FROM healthcare_data;

# 5.Total Treatment Cost
SELECT ROUND(SUM(Treatment_Cost), 2) AS Total_Treatment_Cost
FROM healthcare_data;

# 6.Average Treatment Cost
SELECT ROUND(AVG(Treatment_Cost), 2) AS Avg_Treatment_Cost
FROM healthcare_data;

# 7.Average Patient Satisfaction
SELECT ROUND(AVG(Patient_Satisfaction), 2) AS Avg_Satisfaction
FROM healthcare_data;

# Step-2 Department Analysis
SELECT
    Department,
    COUNT(*) AS Total_Patients,
    ROUND(AVG(Length_of_Stay_Days), 2) AS Avg_Length_of_Stay,
    ROUND(SUM(Treatment_Cost), 2) AS Total_Treatment_Cost,
    ROUND(AVG(Treatment_Cost), 2) AS Avg_Treatment_Cost,
    ROUND(AVG(Patient_Satisfaction), 2) AS Avg_Satisfaction
FROM healthcare_data
GROUP BY Department
ORDER BY Total_Patients DESC;

# Step-3 Medical Conditions
SELECT
    Medical_Condition,
    COUNT(*) AS Patient_Count
FROM healthcare_data
GROUP BY Medical_Condition
ORDER BY Patient_Count DESC;

# 4.Admission Types
SELECT
    Admission_Type,
    COUNT(*) AS Admissions,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM healthcare_data),
        1
    ) AS Percentage
FROM healthcare_data
GROUP BY Admission_Type
ORDER BY Admissions DESC;

# 5.Monthly Admission Trends
SELECT
    Admission_Year,
    Admission_Month,
    Admission_Month_Name,
    COUNT(*) AS Admissions
FROM healthcare_data
GROUP BY
    Admission_Year,
    Admission_Month,
    Admission_Month_Name
ORDER BY
    Admission_Year,
    Admission_Month;
    
# 6. Readmission Analysis
SELECT
    COUNT(*) AS Total_Patients,
    SUM(Readmission_Within_30_Days = 'Yes') AS Readmitted_Patients,
    ROUND(
        SUM(Readmission_Within_30_Days = 'Yes') * 100.0 / COUNT(*),
        2
    ) AS Readmission_Rate
FROM healthcare_data;

# 7.Patient Outcomes
SELECT
    Outcome,
    COUNT(*) AS Patient_Count,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM healthcare_data),
        1
    ) AS Percentage
FROM healthcare_data
GROUP BY Outcome
ORDER BY Patient_Count DESC;

# 8.Insurance Analysis
SELECT
    Insurance_Type,
    COUNT(*) AS Patients,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM healthcare_data),
        1
    ) AS Percentage,
    ROUND(SUM(Insurance_Covered), 2) AS Total_Insurance_Covered
FROM healthcare_data
GROUP BY Insurance_Type
ORDER BY Patients DESC;

# 9.Follow-Up Requirements
SELECT
    Follow_Up_Required,
    COUNT(*) AS Patients,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM healthcare_data),
        1
    ) AS Percentage
FROM healthcare_data
GROUP BY Follow_Up_Required;

# 10.Top 10 Cities by Patients
SELECT
    City,
    COUNT(*) AS Patient_Count
FROM healthcare_data
GROUP BY City
ORDER BY Patient_Count DESC
LIMIT 10;