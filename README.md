# UberData

# UberData Project

As a data analyst driving for Uber, I embarked on a project to analyze and make sense of the data collected from Uber drivers. This project involved utilizing SQL queries to gain insights and answer important questions about the data. Let me take you through an overview of the project, including the data used and the steps I took.

## Data

For this analysis, I worked with two main tables: "uberdemographics" and "UberSalary." These tables provided valuable information about Uber drivers. Here's a breakdown of the columns in each table:

### uberdemographics

- EmployeeID (INTEGER)
- FirstName (VARCHAR(50))
- LastName (VARCHAR(50))
- Age (INTEGER)
- Gender (VARCHAR(10))

### UberSalary

- EmployeeID (INTEGER)
- JobTitle (VARCHAR(50))
- Salary (INTEGER)

Additionally, I created another table called "Uber_Min_Zip" that contained the following columns:

- UberId (INTEGER)
- Pickupzip (INTEGER)
- DropoffZip (INTEGER)
- Trip_Time (INTEGER)
- Rating (INTEGER)

## SQL Queries and Analysis

To uncover meaningful insights from the data, I ran several SQL queries. These queries helped me extract valuable information and gain a deeper understanding of the Uber driver data. Here are some examples of the queries I used:

1. **Average income of all Uber riders:** I calculated the average salary of all Uber riders.
2. **First and last name of passengers above average salary:** I created the first and last names of passengers whose salary is above the average.
3. (The names used in this analysis are not the actual names of passengers. This is done to protect the privacy and identity of the individuals involved.)
4. **Job titles utilized by Uber riders:** I identified the job titles used by Uber riders and their respective counts.
5. **Correlation between pickup and drop-off zip codes:** I calculated the correlation between the pickup and drop-off zip codes.
6. **Zip codes with the highest demand for Uber services in Charlotte, NC:** I identified the zip codes with the highest demand by counting the number of rides per zip code.
7. **Average trip duration for different job titles:** I calculated the average trip duration for each job title.
8. **Salary difference between male and female passengers:** I determined the average salary for male and female passengers and compared them.
9. **Relationship between trip duration and pickup/drop-off zip codes:** I calculated the average trip duration for each combination of pickup and drop-off zip codes.
10. **Salary amounts for each passenger:** I retrieved the first name, last name, job title, and salary of each passenger, sorted by salary in descending order.

## Conclusion

In conclusion, this project allowed me to dive deep into the Uber driver data using SQL queries. By analyzing various aspects such as income distribution, job titles, correlations, trip durations, and salary differences, I gained valuable insights into the Uber driver demographics and patterns. These findings contribute to a better understanding of the data and can potentially inform decision-making for Uber.

Feel free to explore the provided SQL queries and modify them to further analyze the data or answer additional questions.
