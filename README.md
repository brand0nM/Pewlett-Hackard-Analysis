# Pewlett-Hackard-Analysis
## Project Overview
Pewlett Hackard's “silver tsunami” is rapidly approaching as many current employees reach retirement age. We've been tasked with determining the number of retiring employees per job title, and identify which employees are eligible to participate in the mentorship program.

### Purpose
Create a database using PostgreSQL, then using its querying language gain insights from extensive CSV files.

## Analysis
First, we must create all relevant tables using SQL queries, then populate its data from CSV files.
![EmployeeDB](https://user-images.githubusercontent.com/79609464/166286182-2f3b7938-275c-4e14-97d5-20a2b8bcf8ef.png)

### Retirement
To get the Retirement info of employees born between January 1, 1952 and December 31, 1955 we first join the employees and titles tables, then use where statements to filter and orderby to sort; After we'll export the Retirement Titles table as retirement_titles.csv. Then we'll remove duplicates employees from Retirment Titles and filter based on current employees; After we'll export the Unique Titles table as unique_titles.csv. Finally, we'll create a new table with the count of retiring employees and their most recent job title; After we'll export the Retiring Titles table as retiring_titles.csv.
<img width="543" alt="Screen Shot 2022-05-02 at 10 40 30 AM" src="https://user-images.githubusercontent.com/79609464/166288498-a51cc5e6-6529-47b7-91ea-397e98e83664.png">

### Mentorship
You will earn a perfect score for Deliverable 2 by completing all requirements below:
A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965. (25 pt)
The Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv. (5 pt)

### Challenges and Difficulties Encountered
name some challenges

## Results

## Summary
The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)
