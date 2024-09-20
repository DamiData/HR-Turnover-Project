# Galaxy Company Project Documentation

## Company Overview
Galaxy is a Human Resource company facing a significant challenge with high employee turnover. This report seeks to analyze the factors contributing to this issue and offers actionable recommendations to improve employee retention.

![GALAXY HR TURNOVER REPORT DASHBOARD](https://github.com/user-attachments/assets/6c2b4d0e-2293-4a85-8920-b32fb10af05b)


## Problem Statement
Galaxy is experiencing a high rate of employee turnover, and there is a need to understand the root causes of this issue. This analysis investigates patterns and trends in employee attrition, focusing on demographic characteristics, job roles, and departments. The goal is to identify key drivers of turnover and provide recommendations to reduce overall attrition and enhance employee retention.

## Project Objectives
1. Identify the reasons for employee attrition.
2. Analyze turnover by race and gender.
3. Track turnover trends over time.
4. Evaluate turnover by department and location.
5. Monitor the overall employee count.
6. Calculate the employee termination rate.

## Data Overview
The Galaxy dataset contains detailed information on employee demographics, job roles, tenure, and termination records within the company. This dataset will be used to analyze employee turnover, uncover patterns, and identify key factors influencing employee attrition.

- **Data Source:** Provided by the HR department as an Excel file.

## Data Cleaning and Preprocessing
To ensure the accuracy and reliability of the analysis, the following steps were taken, all performed using SQL:

1. **Data Import and Setup:**
   - **File Conversion:** The original Excel dataset was converted to CSV for easier import.
   - **Table Creation:** A PostgreSQL table was created, and the CSV data was imported into it.

2. **Data Cleaning:**
   - Removed Duplicates.
   - **Gender Standardization:** Replaced inconsistent gender codes (e.g., "M" and "Fm") with standardized values ("Male" and "Female").
   - Table Duplication and Renaming.
   - Standardized Data.
   - Removed Inconsistent Data.

3. **Exploratory Data Analysis (EDA):**
   - **Data Summary:** Reviewed the overall structure of the cleaned data to ensure it aligns with expected formats and contains no errors.
   - **Distribution Analysis:** Examined the distribution of categorical variables (e.g., gender, race, department) to identify patterns or imbalances.

4. **Data Export and Use:**
   - The cleaned data was exported from PostgreSQL as an Excel file for further analysis.
   - The Excel file was then re-imported for additional analysis and visualization.

## Key Insights
1. The overall employee turnover rate is 17.7%.
2. Female employees have a slightly higher attrition rate than male employees.
3. By job title, **Statistician IV** and **Executive Secretary** show the highest turnover rates, nearing 100%, while **Sales Representative** has the lowest.
4. The age group with the highest attrition is **Under 30**, at 18.10%. Attrition rates decrease with older age groups, with the **50 and over** group having the lowest rate at 17.00%.
5. Some racial groups show a higher likelihood of leaving the company than others.

## Recommendations
1. **Targeted Retention Strategies:** Develop tailored retention strategies for departments and employee groups with high turnover rates.
2. **Diversity and Inclusion Initiatives:** Strengthen diversity and inclusion efforts to create a more inclusive workplace.
3. **Career Development Opportunities:** Invest in employee development and provide clear career growth paths to retain top talent.
4. **Exit Interviews:** Conduct comprehensive exit interviews to collect feedback from departing employees and identify areas for improvement.
5. **Remote Work Policies:** Assess the effectiveness of current remote work policies and consider potential adjustments.
6. **Flexible Work Arrangements:** Offer more flexible work options, such as remote work or flexible hours, to accommodate younger employees.
7. **Mentorship Programs:** Establish mentorship initiatives that pair employees from diverse backgrounds to foster inclusion and growth.

## Conclusion
The Galaxy HR Analytics Dashboard provides a detailed view of employee turnover within the organization. The analysis demonstrates that turnover is driven by a range of factors, including gender, department, geography, age, and race. By implementing the recommended retention strategies, promoting diversity, and investing in employee development, Galaxy can reduce attrition and foster a more committed and inclusive workforce.
