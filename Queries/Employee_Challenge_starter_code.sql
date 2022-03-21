-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;


Create a Retirement Titles table
 that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. 
 Because some employees may have multiple titles in the database—for example, due to promotions—you’ll 
 need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. 
 
 Then, use the COUNT() function to create a table that has the number of retirement-age employees
 by most recent job title. Finally, because we want to include only current employees in our analysis, 
 be sure to exclude those employees who have already left the company.

Deliverable 1 :

1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
2. Retrieve the title, from_date, and to_date columns from the Titles table.
3. Create a new table using the INTO clause.
4. Join both tables on the primary key.
5. Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. 
    Then, order by the employee number.
6. Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your 
    Data folder in the Pewlett-Hackard-Analysis folder.
7. Before you export your table, confirm that it looks like this image:

    Note: There are duplicate entries for some employees because they have switched titles over the years. 
    Use the following instructions to remove these duplicates and keep only the most recent title of each employee.
8. Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
9. Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
    These columns will be in the new table that will hold the most recent title of each employee.
10. Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows 
    defined by the ON () clause.
11. Exclude those employees that have already left the company by filtering on to_date to keep only those dates that 
    are equal to '9999-01-01'.
12. Create a Unique Titles table using the INTO clause.
13. Sort the Unique Titles table in ascending order by the employee number and descending order by the last date 
    (i.e., to_date) of the most recent title.
14. Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
15. Before you export your table, confirm that it looks like this image:

16. Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most 
    recent job title who are about to retire.
17. First, retrieve the number of titles from the Unique Titles table.
18. Then, create a Retiring Titles table to hold the required information.
19. Group the table by title, then sort the count column in descending order.
20. Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
21. Before you export your table, confirm that it looks like this image:
22. Save your Employee_Database_challenge.sql file in your Queries folder in the Pewlett-Hackard folder.

Deliverable 1 Requirements:

A query is written and executed to create a Retirement Titles table for employees who are born 
    between January 1, 1952 and December 31, 1955. (10 pt)

The Retirement Titles table is exported as retirement_titles.csv. (5 pt)

​A query is written and executed to create a Unique Titles table 
    that contains the employee number, first and last name, and most recent title. (15 pt)

​The Unique Titles table is exported as unique_titles.csv. (5 pt)

A query is written and executed to create a Retiring Titles table that contains the number of titles filled by 
    employees who are retiring. (10 pt)

The Retiring Titles table is exported as retiring_titles.csv. (5 pt)

Deliverable 2:

Employee_Database_challenge.sql file, 
write a query to create a Mentorship Eligibility table 
that holds the employees who are eligible to participate in a mentorship program.

1. Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
2. Retrieve the from_date and to_date columns from the Department Employee table.
3. Retrieve the title column from the Titles table.
4. Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
5. Create a new table using the INTO clause.
6. Join the Employees and the Department Employee tables on the primary key.
7. Join the Employees and the Titles tables on the primary key.
8. Filter the data on the to_date column to all the current employees, 
    then filter the data on the birth_date columns to get all the employees whose birth dates 
    are between January 1, 1965 and December 31, 1965.
9. Order the table by the employee number.
10. Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the 
    Pewlett-Hackard-Analysis folder.
11. Before you export your table, confirm that it looks like this image:

Deliverable 2 Requirements: 

A query is written and executed to create a Mentorship Eligibility table for current employees who were born 
    between January 1, 1965 and December 31, 1965. (25 pt)

The Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv. (5 pt)

Deliverable 3 Instructions:
For this part of the Challenge, you’ll write a report to help the manager prepare for the upcoming "silver tsunami."

The analysis should contain the following:

Overview of the analysis: Explain the purpose of this analysis.
Results: Provide a bulleted list with four major points from the two analysis deliverables. 
Use images as support where needed.
Summary: Provide high-level responses to the following questions, then provide two additional queries 
or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?