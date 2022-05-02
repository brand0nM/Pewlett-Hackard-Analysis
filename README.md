# Pewlett-Hackard-Analysis
## Project Overview
Pewlett Hackard's “silver tsunami” is rapidly approaching as many current employees reach retirement age. We've been tasked with determining the number of retiring employees per job title, and identify which employees are eligible to participate in the mentorship program.

### Purpose
Create a database using PostgreSQL, then using its querying language gain insights from extensive CSV files.

## Analysis
First, we must create all relevant tables using SQL queries, then populate its data from CSV files.
![EmployeeDB](https://user-images.githubusercontent.com/79609464/166286182-2f3b7938-275c-4e14-97d5-20a2b8bcf8ef.png)

### Retirement
To get the Retirement info of employees born between January 1, 1952 and December 31, 1955 we first join the employees and titles tables, then use where statements to filter and orderby to sort; After we'll export the Retirement Titles table as retirement_titles.csv. Then we'll remove duplicates employees from Retirment Titles and filter based on current employees; After we'll export the Unique Titles table as unique_titles.csv. Finally, we'll create a new table with the count of retiring employees and their most recent job title; After we'll export the Retiring Titles table as retiring_titles.csv.<br />
<img width="543" alt="Screen Shot 2022-05-02 at 10 40 30 AM" src="https://user-images.githubusercontent.com/79609464/166288498-a51cc5e6-6529-47b7-91ea-397e98e83664.png">

### Mentorship
To find eligible mentors we must first join the Employees, Department Employees, and Titles table.
Then filter those results based on date between January 1 and December 31, 1965. After sortby employee number/title and remove any duplicate employees. Finally export the Mentorship Eligibility table as mentorship_eligibilty.csv.<br />
<img width="972" alt="Screen Shot 2022-05-02 at 10 56 12 AM" src="https://user-images.githubusercontent.com/79609464/166291029-56f71566-b5c1-4eca-b55a-c831da9b4afb.png">

### Challenges and Difficulties Encountered
name some challenges

## Results

## Summary
The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)
