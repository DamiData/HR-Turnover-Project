--Visualization Analysis to be done

--Termination Rate By Department

Select 
Department,
(Count(termdate) * 100.0/Count(id)) As Termination_Rate
From Hr_attrition
Group By Department

--Termination Rate By Job Title
	
Select 
job_title,
(Count(termdate) *100.0/Count(id)) As Termination_Rate
From Hr_attrition
Group By job_title

--Employee Attrition By Age Group
	
Select 
Case
When Extract(year From age(current_date,birth_date)) Between 20 and 29 Then '20-29'
When Extract (year From age(current_date,birth_date)) Between 30 and 39 Then '30-39'
When Extract (year From age(current_date,birth_date)) Between 40 and 49 Then '40-49'
Else '50+'
End As Age_Group,
(Count(termdate)*100.0/Count(id)) As Termination_Rate
From
hr_attrition
Group By Age_Group


--Termination Rate  By Location

Select Location,
(Count(termdate)*100.0/Count(id)) As Terminationn_Rate
From Hr_attrition
Group By Location


--Termination by Gender

Select Gender,
(Count(termdate)*100.0/Count(id)) As Terminationn_Rate
From Hr_attrition
Group By Gender

--Turnover By Race 

Select race ,
Count(Case When termdate is not null then 1 end) As Termination,
Count(*) As Total_Employee,
Round(Count(Case when termdate is not null then 1 end) * 100.0/Count(*),2) As Turnover_Rate
From Hr_Attrition
Group By race


--Turnover Trend

Select 
Extract(Year From termdate) As year ,
Extract(Month From Termdate ) As Month,
Count(*) As Terminations
From Hr_Attrition
Where termdate is not null
Group By 
Extract(Year From termdate)  ,
Extract(Month From Termdate )
Order By 
Year,Month