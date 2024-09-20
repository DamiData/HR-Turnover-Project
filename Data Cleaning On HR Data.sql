--Data Cleaning Steps For Hr Data

Select * From Hr

--	Duplicating  the Hr data as (Hr_Staging)  
	
Create Table Hr_Staging
As Select * From hr

Select * From hr_staging

--1.Remove 	Duplicate 
	
Select * ,
Row_Number() Over(
Partition by id,first_name,last_name,birth_date,gender,race,department,job_title,location,
hire_date,termdate,location_city,location_state)As Row_Num
From hr_staging

With duplicate_cte as 
(Select * ,
Row_Number() Over(
Partition by id,first_name,last_name,birth_date,gender,race,department,job_title,location,
hire_date,termdate,location_city,location_state)As Row_Num
From hr_staging
)
Select  *
From duplicate_cte
Where row_num > 1 

Create Table hr_staging2
( id Varchar(50),
  First_Name Varchar (255),
  Last_Name Varchar (255),
	Birth_date Date,
	Gender Varchar (50),
	Race Varchar (255),
	Department Varchar (255),
	Job_Title Varchar (50),
	Location Varchar (50),
	Hire_date Date ,
	Termdate Date ,
	Location_city Varchar (255),
	Location_State Varchar (50),
	row_num int
)

Insert Into hr_staging2
Select * ,
Row_Number() Over(
Partition by id,first_name,last_name,birth_date,gender,race,department,job_title,location,
hire_date,termdate,location_city,location_state)As Row_Num
From hr_staging

Select * 
From hr_staging2
Where row_num > 1

Delete 	
From hr_staging2
Where row_num > 1

--2. Standardize the Data
	
Select Distinct (First_name,last_name,gender,department,job_title,location,location_city,location_state)
From hr_staging2

Select First_name,
Trim(First_name)
From hr_staging2

Select Last_name,
Trim(Last_name)
From hr_staging2

Select gender,
Trim(gender)
From hr_staging2


Select department,
Trim(department)
From hr_staging2

Select job_title,
Trim(job_title)
From hr_staging2


Select Location_city,
Trim(Location_city)
From hr_staging2

	
Select Location_state,
Trim(Location_state)
From hr_staging2

Update  hr_staging2
Set location_state=Trim (location_state)

Select termdate from hr_staging2

Update hr_staging2
Set gender = Replace (gender,'FM','Female')

Update hr_staging2
Set gender = Replace (gender,'M','Male')

Select * From HR_Attrition
---
Alter Table hr_staging2
Rename To HR_Attrition

Select Concat(first_name || ' '|| last_name) As Full_Name
From HR_Attrition

Alter Table HR_Attrition
Add Full_Name Varchar(255)	
	
Update HR_Attrition
Set Full_Name = Concat(first_name || ' '|| last_name)

Update HR_Attrition
Set Full_Name = Trim(Full_Name)

---4. Remove Columns

Alter Table HR_Attrition
Drop Column First_Name

Alter Table HR_Attrition
Drop Column Last_Name

Alter Table HR_Attrition
Drop Column row_num
