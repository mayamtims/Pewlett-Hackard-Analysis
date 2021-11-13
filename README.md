# Pewlett-Hackard-Analysis

## Overview 
The purpose of this analysis was to determine the number of retiring employees per job title and identify employees who are qualified to join mentorship program post retirement.Two tables were created in SQL to present this informaiton. The first table of retiring employees per job title includes the number of employees retiring from each position at the company. The second table of employees eligible for the mentorship program include the employee number, first name, last name, birth date, start date, end date and position title of each retiree. 

## Results
Both tables were exported as CSV files and can be found by clicking on the links below:

[retiring_titles.csv](https://github.com/mayamtims/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)
[mentorship_eligibility](https://github.com/mayamtims/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)

There are four main points that can be deduced from the tables:
1. There are 90,398 employees who are eligible to retire soon.
2. The majority of the retirees are members of the senior staff, almost one third of them being senior engineers. When looking to hire new employees, hiring staff should look to bring on people who can fill senior engineer and other senior staff positions.
3. Of those retiring, 1,549 employees qualify for the mentorship program and the majority of them have senior titles.
4. There are far more people retiring, and therefore more open positions, than there are people eligibile for the mentorship program. The program needs to be either efficient enough for one retiree to be able to mentor multiple new hires, or it needs to be expanded. 

## Summary
According to the retiring_titles table, there are 90398 employees will retire soon and their roles will need to be filled. Breaking it down further by job title there are 29414 senior engineer postions, 28254 senior staff, 14222 engineer, 12243 staff, 4502 technique leaders, 1761 assistant engineers, and 2 manager positions that will need to be filled. Only 1549 employees are eligible for the mentorship program. In order to find out if there were enough mentors for each job title, the following query and subsiquent table was performed.

[summary_query](https://github.com/mayamtims/Pewlett-Hackard-Analysis/blob/main/Queries/summary_qury.png)
[mentorship_table](https://github.com/mayamtims/Pewlett-Hackard-Analysis/blob/main/Queries/summary_table.png)

The table shows that the mentors are proportionally distributed across each job title. This result indicates that there is a sufficent number of mentors per job title to be able to properly train the next generation of employees. There are enough retirement-ready Pewlett Hackard employees who are qualified enough to be a participant in the mentorship program. 