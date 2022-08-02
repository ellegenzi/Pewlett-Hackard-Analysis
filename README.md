# Pewlett-Hackard Analysis: Employee Database

## Overview of Project

### Background and Purpose

Bobby is an up and coming HR analyst who is tasked with performing employee research at Pewlett-Hackard. He is specifically looking to find answers to the following questions: (1) who is retiring in the next few years and (2) how many positions will Pewlett-Hackard need to fill. The employee data is currently only available in the form of six csv files, but Pewlett-Hackard has finally decided to update their methods and use SQL. Our task is to help Bobby build an employee database with SQL by applying our data modeling, engineering, and analysis skills. Using the six original csv files, we will create new tables to help us determine the number of retiring employees by title and which employees may be eligible for a mentorship program.

### Resources

- Data Sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv,  titles.csv
- Software: PgAdmin4 6.8, Visual Studio Code 1.68.1

## Results

+ There are a total of 72,458 employees eligible to retire from Pewlett-Hackard.
+ Roughly 70% (50,842 employees) are senior level employees.
+ Roughly half (36,291 employees) are engineers.
+ Only 1,549 employees are eligible for the mentorship program.
    - This means each mentor would have to take on up to 47 mentees in order for each new employee to have a mentor, which is unrealistic.

## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Overall, across Pewlett-Hackard, there are 72,458 roles that will need to be filled as eligible employees begin to retire. See Figure 1 for the breakdown by department. The Development, Production, and Sales departments are hit the hardest with 63% of retiring employees currently working in those departments.

*Figure 1: Retirement-Eligible Employees by Department*

![retiring_depts](https://user-images.githubusercontent.com/106830513/182299592-1423cb33-b5d3-4951-940f-a4006ac8becd.png)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees?

To put in bluntly, no, there are not enough employees currently earmarked as potential mentors for the mentorship program. There will be a lot of positions to fill with new employees, and there are just not enough employees available for mentorship using the current criteria. See Figure 2 for the breakdown by department. Fortunately, the three departments with the most retiring employees are also the same three departments with the most eligible employees for mentorship, but the numbers still fall short. Pewlett-Hackard may need to look into expanding its criteria for the mentorship program to find more employees to mentor new hires. See Figure 3 for a breakdown by department with expanded criteria. Pewlett-Hackard has 18,356 employees that were born in the year 1964 and could all be added to the mentorship program, for a total of 19,905 mentors. This would bring the number of mentees down to a more reasonable 3 or 4 for each mentor.

*Figure 2: Eligible Employees for Mentorship by Department (Current Criteria)*

![mentoring_depts](https://user-images.githubusercontent.com/106830513/182299620-e3ce7578-1044-4d64-91c1-35778c3faa81.png)

*Figure 3: Eligible Employees for Mentorship by Department (Expanded Criteria)*

![mentoring_depts2](https://user-images.githubusercontent.com/106830513/182299647-879f7f96-b63b-4d88-96be-a6280300cb40.png)
