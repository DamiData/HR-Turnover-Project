--Exploratory Data Analysis

Select * From Hr_Attrition

--KPI 
-- Employee Gender Count

Select 
Gender,
Count(id)
From Hr_attrition
Group By Gender


--- Total  Number of Employee Terminated 
	
Select Count(id) As Total_Terminated
From Hr_attrition
Where termdate is not null


--Overall Turnover Rate
	
Select (Count(termdate)*100.0/Count(id)) as turnover_rate
From Hr_attrition

--Creating Age For Employees
Select 
Id,
birth_date,
Extract(year from age(current_date,birth_date)) As Employee_Age 
From Hr_attrition

--Adding Employee_Age 
	
Alter Table Hr_Attrition
Add Column Employee_Age Int	

--Update to modify employee Age

Update Hr_Attrition
Set Employee_Age =Extract(year from age(current_date,birth_date))
	
---Average Tenure of Employees
	
Select
Avg(Extract(year from Age(termdate,hire_date))) As Avg_tenure
From Hr_Attrition
Where termdate is not null

--Employee Termination Rate
	
Select (Count(termdate)* 100.0/Count(id)) As Termination_Rate
From Hr_attrition
