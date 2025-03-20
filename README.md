# SQL-Employees-Data-Queries-and-Stored-Procedure-Development

**Project Summary: Employee Data Queries & Stored Procedure Development**
I developed SQL queries and a stored procedure to meet specific HR and management needs related to employee data tracking, salary categorization, and department-based retrieval.

---
# Tracking Employees Hired in the Last 12 Months

Designed a query using NOW() and DATE_SUB() to filter employees based on their hire_date.
Retrieved relevant details, including first_name, last_name, hire_date, and department_id, ensuring HR can track recent hires for performance reviews.
Salary Categorization for Compensation Planning

---

# Implemented a CASE statement to classify employees into three salary categories:
- Low Salary: Below $50,000
- Medium Salary: $50,000 – $200,000
- High Salary: Above $200,000
- The query returns first_name, last_name, salary, and the assigned salary category, aiding management in compensation planning.


---
# Retrieving Employees by Department Name
**Developed a stored procedure** named GetEmployeesByDepartmentName to retrieve employees based on department names instead of department IDs.
The procedure accepts dept_name as an input parameter and returns first_name, last_name, salary, and job_title.
Successfully tested the procedure by calling it for the "Engineer" department.

---
