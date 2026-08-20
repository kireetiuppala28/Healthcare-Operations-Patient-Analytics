# Healthcare Operations & Patient Analytics Dashboard

## 📊 Project Overview

This project is an end-to-end **Healthcare Operations & Patient Analytics** solution developed to analyze patient information, hospital operations, treatment costs, insurance coverage, patient payments, satisfaction, and readmission patterns.

The project follows a complete analytics workflow:

**Data Cleaning → Exploratory Data Analysis → MySQL → SQL Business Analysis → Power BI → Business Insights**

The cleaned healthcare dataset contains **10,000 patient records** and was analyzed using Python, MySQL, SQL, and Power BI.

---

## 🎯 Business Objectives

The main objectives of this project are:

* Analyze overall patient and admission volume
* Identify the busiest hospital departments
* Analyze treatment costs across departments
* Understand patient demographics
* Identify the most common medical conditions
* Analyze admission types
* Measure average length of stay
* Analyze patient satisfaction
* Evaluate insurance coverage and patient payments
* Measure 30-day readmission
* Analyze follow-up requirements
* Understand patient outcomes
* Identify important operational and financial patterns
* Build an interactive healthcare management dashboard

---

## 🛠️ Tools & Technologies

| Tool             | Purpose                                     |
| ---------------- | ------------------------------------------- |
| Python           | Data cleaning and preprocessing             |
| Pandas           | Data manipulation                           |
| Matplotlib       | Exploratory data analysis and visualization |
| MySQL            | Database storage                            |
| SQL              | Business analysis and aggregation           |
| Power BI         | Interactive dashboard                       |
| DAX              | KPI and analytical measures                 |
| Jupyter Notebook | Data cleaning and EDA                       |

---

## 📁 Dataset

The dataset contains patient-level healthcare records covering demographic, clinical, operational, and financial information.

Important fields include:

* Patient ID
* Patient Name
* Age
* Gender
* Blood Group
* City
* State
* Department
* Doctor
* Medical Condition
* Admission Type
* Admission Date
* Discharge Date
* Length of Stay
* Room Type
* Insurance Type
* Treatment Cost
* Insurance Covered
* Patient Payment
* Patient Satisfaction
* Outcome
* Follow-Up Required
* Readmission Within 30 Days
* Age Group
* Admission Year
* Admission Month
* Admission Month Name
* Quarter

---

## 🔄 Project Workflow

```text
Raw Healthcare Dataset
        ↓
Data Cleaning & Validation
        ↓
Python / Pandas
        ↓
Cleaned Dataset
        ↓
Exploratory Data Analysis
        ↓
MySQL Database
        ↓
SQL Business Analysis
        ↓
Power BI
        ↓
Interactive Dashboard
        ↓
Business Insights & Recommendations
```

---

# 1. Data Cleaning & Preprocessing

Python and Pandas were used to prepare the healthcare dataset for analysis.

The cleaning process included:

* Checking dataset structure
* Checking data types
* Identifying missing values
* Checking duplicate records
* Validating numerical columns
* Validating categorical fields
* Converting admission and discharge dates
* Creating age groups
* Creating admission year and month fields
* Creating month names
* Creating quarters
* Performing final data-quality validation

The final dataset contained **10,000 records** prepared for SQL and Power BI analysis.

---

# 2. Exploratory Data Analysis

EDA was performed to understand the characteristics and patterns in the healthcare dataset.

The analysis examined:

* Patient age distribution
* Gender distribution
* Medical conditions
* Department-wise patient volume
* Admission types
* Length of stay
* Treatment costs
* Insurance coverage
* Patient payments
* Patient satisfaction
* Patient outcomes
* Readmission patterns
* Monthly admissions

EDA helped identify important trends before performing SQL and dashboard analysis.

---

# 3. MySQL Database

The cleaned dataset was imported into MySQL using the database:

`healthcare_analytics`

The primary analytical table is:

`healthcare_data`

SQL was used to perform business-oriented analysis and aggregations.

---

# 4. SQL Business Analysis

SQL queries were created to answer important healthcare business questions.

### Key analyses included:

### Patient Volume

Calculated:

* Total patients
* Total admissions

### Department Performance

Compared departments based on:

* Patient volume
* Average length of stay
* Total treatment cost
* Average treatment cost
* Patient satisfaction

### Medical Conditions

Identified the most frequently occurring medical conditions.

### Admission Analysis

Compared admission types and their percentage contribution.

### Monthly Admissions

Analyzed admission trends by year and month.

### Readmission Analysis

Calculated the percentage of patients readmitted within 30 days.

### Patient Outcomes

Analyzed the distribution of patient outcomes.

### Insurance Analysis

Compared:

* Insurance types
* Number of patients
* Insurance coverage
* Percentage contribution

### Follow-Up Analysis

Analyzed the number and percentage of patients requiring follow-up.

### Geographic Analysis

Identified cities with the highest patient volumes.

---

# 5. Key SQL Findings

Department-level analysis produced the following results:

| Department       | Patients | Avg Stay | Total Treatment Cost | Avg Treatment Cost | Satisfaction |
| ---------------- | -------: | -------: | -------------------: | -----------------: | -----------: |
| General Medicine |    1,992 |     5.28 |               67.60M |          33,935.97 |         3.97 |
| Emergency        |    1,496 |     5.20 |               60.05M |          40,141.34 |         3.93 |
| Orthopedics      |    1,461 |     5.19 |               61.54M |          42,123.11 |         4.02 |
| Neurology        |    1,275 |     5.21 |               61.57M |          48,288.22 |         3.97 |
| Cardiology       |    1,137 |     5.35 |               59.93M |          52,705.56 |         3.96 |
| Pediatrics       |    1,001 |     5.24 |               32.39M |          32,361.64 |         3.98 |
| Dermatology      |      841 |     5.25 |               24.35M |          28,958.35 |         4.00 |
| Oncology         |      797 |     5.17 |               45.58M |          57,194.34 |         4.02 |

### Main observations

* **General Medicine** has the highest patient volume with **1,992 patients**.
* General Medicine also has the highest total treatment cost at approximately **67.60 million**.
* **Oncology** has the highest average treatment cost at approximately **57,194 per patient**.
* **Cardiology** has the highest average length of stay at **5.35 days**.
* **Oncology and Orthopedics** have the highest satisfaction score at **4.02**.
* **Emergency** has the lowest satisfaction score among the departments at **3.93**.

These findings help connect patient volume, treatment costs, operational workload, and patient experience.

---

# 6. Power BI Dashboard

An interactive three-page Power BI dashboard was developed.

## Page 1 — Executive Overview

This page provides a high-level management view.

### KPIs

* Total Patients
* Total Admissions
* Total Treatment Cost
* 30-Day Readmission Rate

### Visualizations

* Monthly Admissions Trend
* Patients by Department
* Admissions by Type
* Treatment Cost by Department
* Patient Outcomes

### Filters

* Admission Year
* Department
* Gender
* Admission Type

---

## Page 2 — Patient & Clinical Insights

This page focuses on patient demographics and clinical patterns.

### KPIs

* Total Patients
* Average Patient Age
* Average Length of Stay
* Average Patient Satisfaction

### Visualizations

* Patients by Age Group
* Patients by Medical Condition
* Patients by Gender
* Average Length of Stay by Department
* Patient Satisfaction by Department

### Filters

* Age Group
* Gender
* Medical Condition
* Department

---

## Page 3 — Operations & Financial Insights

This page focuses on financial and operational performance.

### KPIs

* Total Treatment Cost
* Total Insurance Coverage
* Total Patient Payment
* Average Treatment Cost

### Visualizations

* Treatment Cost by Department
* Insurance Coverage by Insurance Type
* Patient Payment by Insurance Type
* 30-Day Readmission Analysis
* Follow-Up Requirement
* Patient Outcome Distribution

### Filters

* Admission Year
* Department
* Insurance Type
* Patient Outcome

---

# 7. DAX Measures

Key Power BI measures include:

### Total Patients

```DAX
Total Patients =
DISTINCTCOUNT(healthcare_data[Patient_ID])
```

### Total Admissions

```DAX
Total Admissions =
COUNTROWS(healthcare_data)
```

### Total Treatment Cost

```DAX
Total Treatment Cost =
SUM(healthcare_data[Treatment_Cost])
```

### Average Treatment Cost

```DAX
Average Treatment Cost =
AVERAGE(healthcare_data[Treatment_Cost])
```

### Average Length of Stay

```DAX
Average Length of Stay =
AVERAGE(healthcare_data[Length_of_Stay_Days])
```

### Average Satisfaction

```DAX
Average Satisfaction =
AVERAGE(healthcare_data[Patient_Satisfaction])
```

### Readmission Rate

```DAX
Readmission Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS(healthcare_data),
        healthcare_data[Readmission_Within_30_Days] = "Yes"
    ),
    COUNTROWS(healthcare_data)
)
```

### Total Insurance Covered

```DAX
Total Insurance Covered =
SUM(healthcare_data[Insurance_Covered])
```

### Total Patient Payment

```DAX
Total Patient Payment =
SUM(healthcare_data[Patient_Payment])
```

---

# 8. Key Business Insights

The analysis provides several important operational insights:

### 1. General Medicine has the highest workload

General Medicine handles the largest number of patients, making it an important department for resource planning and staffing.

### 2. General Medicine generates the highest total treatment cost

Although Oncology has a higher average cost per patient, General Medicine generates the highest overall treatment expenditure because of its larger patient volume.

### 3. Oncology has the highest average treatment cost

The high average treatment cost indicates that Oncology cases require significantly greater financial resources per patient.

### 4. Cardiology has the longest average stay

Cardiology has an average stay of **5.35 days**, which can be monitored to identify opportunities for improving bed utilization and discharge planning.

### 5. Patient satisfaction is relatively high across departments

Department satisfaction scores are close to 4 out of 5, with Oncology and Orthopedics achieving the highest score among the analyzed departments.

### 6. Emergency has comparatively lower satisfaction

Emergency has the lowest departmental satisfaction score at **3.93**, indicating an area where patient experience can be investigated further.

---

# 9. Business Recommendations

Based on the analysis:

### Resource Planning

Allocate staffing and operational resources according to patient volume, particularly in high-volume departments such as General Medicine and Emergency.

### Cost Management

Monitor high-cost departments such as Oncology and Cardiology to understand the major drivers of treatment expenditure.

### Length-of-Stay Management

Investigate departments with higher average stays to identify opportunities for improving bed utilization and discharge processes.

### Patient Experience

Analyze the reasons behind lower satisfaction in Emergency services and identify opportunities to improve waiting time, communication, and service experience.

### Readmission Monitoring

Track 30-day readmission rates regularly and identify patient groups or departments with higher readmission risk.

### Follow-Up Management

Use follow-up analysis to improve post-discharge patient monitoring and continuity of care.

---

# 10. Project Outcome

The project converts raw healthcare records into an interactive analytics solution that allows users to:

* Monitor patient volume
* Analyze hospital departments
* Track treatment costs
* Understand patient demographics
* Monitor satisfaction
* Evaluate insurance coverage
* Analyze patient payments
* Track readmissions
* Analyze follow-up requirements
* Understand patient outcomes

The final Power BI dashboard provides a centralized view of **clinical, operational, financial, and patient-experience metrics**.

---

# 📌 Project Skills Demonstrated

This project demonstrates practical experience in:

* Python
* Pandas
* Data Cleaning
* Exploratory Data Analysis
* MySQL
* SQL
* Data Modeling
* DAX
* Power BI
* KPI Development
* Dashboard Design
* Business Analysis
* Data Visualization
* Healthcare Analytics

---

# 🚀 Future Enhancements

Possible future improvements include:

* Predictive readmission modeling
* Patient length-of-stay prediction
* Treatment cost forecasting
* Department workload forecasting
* Automated Power BI refresh
* Advanced patient segmentation
* Machine learning-based risk prediction

---

## 📌 Conclusion

The **Healthcare Operations & Patient Analytics Dashboard** demonstrates an end-to-end data analytics workflow, starting from raw healthcare data and progressing through data cleaning, EDA, SQL analysis, and interactive Power BI visualization.

The project provides actionable insights into **patient volume, clinical patterns, hospital operations, treatment costs, insurance coverage, patient satisfaction, and readmission**, supporting data-driven healthcare management decisions.
